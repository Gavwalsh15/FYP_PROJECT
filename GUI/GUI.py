import tkinter as tk
from tkinter import filedialog, messagebox, ttk
import serial
import serial.tools.list_ports
from threading import Thread
from UART import send_block, send_block_file
import hashlib
import time

COM_PORT = 'COM4'
BAUD_RATE = 5_000_000


def init_uart():
    """
    Initialize UART connection with predefined settings.
    """
    try:
        uart = serial.Serial(
            port=COM_PORT,
            baudrate=BAUD_RATE,
            bytesize=8,
            parity='N',
            stopbits=1,
            timeout=None,
        )
        return uart
    except Exception as e:
        messagebox.showerror("Error", f"Failed to initialize UART: {str(e)}")
        return None


def compute_sha256(data):
    """
    Compute SHA-256 hash of input data (text or file content).
    """
    sha256_hash = hashlib.sha256()
    if isinstance(data, str):
        sha256_hash.update(data.encode('utf-8'))
    else:  # Assume bytes (for file content)
        sha256_hash.update(data)
    return sha256_hash.hexdigest()


def browse_file():
    file_path = filedialog.askopenfilename()
    if file_path:
        file_path_var.set(file_path)


def process_text():
    uart_inst = init_uart()
    if uart_inst is None:
        output_text.delete("1.0", tk.END)
        output_text.insert(tk.END, "Failed to connect to UART device.\n")
        return

    text = text_input.get("1.0", tk.END).strip()
    if not text:
        messagebox.showerror("Error", "Please enter some text to send.")
        uart_inst.close()
        return
    output_text.delete("1.0", tk.END)
    output_text.insert(tk.END, "Sending Text Data...\n")
    Thread(target=send_text_data, args=(text, uart_inst)).start()


def process_file():
    uart_inst = init_uart()
    if uart_inst is None:
        output_text.delete("1.0", tk.END)
        output_text.insert(tk.END, "Failed to connect to UART device.\n")
        return

    file_path = file_path_var.get()
    if not file_path:
        messagebox.showerror("Error", "Please select a file to send.")
        uart_inst.close()
        return
    output_text.delete("1.0", tk.END)
    output_text.insert(tk.END, "Sending File Data...\n")
    Thread(target=send_file_data, args=(file_path, uart_inst)).start()


def send_text_data(text, uart_inst):
    """
    Send text data, compute local hash, measure time, and update GUI.
    """
    try:
        # Compute local SHA-256 hash
        computer_hash = compute_sha256(text)

        # Measure time taken for FPGA operation
        start_time = time.time()
        result = send_block(text, uart_inst)
        end_time = time.time()
        time_taken = (end_time - start_time) * 1000  # Convert to milliseconds

        # Display results
        output_text.insert(tk.END, f"FPGA HASH: {result if result else 'No data returned'}\n")
        output_text.insert(tk.END, f"Computer HASH: {computer_hash}\n")
        output_text.insert(tk.END, f"Time taken: {time_taken:.2f} ms\n")
    except Exception as e:
        output_text.insert(tk.END, f"Error during text transmission: {str(e)}\n")
    finally:
        uart_inst.close()
        output_text.see(tk.END)


def send_file_data(file_path, uart_inst):
    """
    Send file data, compute local hash, measure time, and update GUI.
    """
    try:
        # Read file content and compute local SHA-256 hash
        with open(file_path, 'rb') as f:
            file_content = f.read()
        computer_hash = compute_sha256(file_content)

        # Measure time taken for FPGA operation
        start_time = time.time()
        result = send_block_file(file_path, uart_inst)
        end_time = time.time()
        time_taken = (end_time - start_time) * 1000  # Convert to milliseconds

        # Display results
        output_text.insert(tk.END, f"FPGA HASH: {result if result else 'No data returned'}\n")
        output_text.insert(tk.END, f"Computer HASH: {computer_hash}\n")
        output_text.insert(tk.END, f"Time taken: {time_taken:.2f} ms\n")
    except Exception as e:
        output_text.insert(tk.END, f"Error during file transmission: {str(e)}\n")
    finally:
        uart_inst.close()
        output_text.see(tk.END)


# Create the main window
root = tk.Tk()
root.title("SHA-256 FPGA Interface")
root.geometry("900x500")
root.configure(bg="#f0f0f0")

# Title
title_label = tk.Label(root, text="SHA-256 FPGA Interface", font=("Helvetica", 16, "bold"), bg="#f0f0f0")
title_label.pack(pady=10)

# Input Frame
input_frame = tk.LabelFrame(root, text="Input Data", font=("Helvetica", 10, "bold"), bg="#f0f0f0", padx=10, pady=5)
input_frame.pack(fill="both", expand=True, padx=10, pady=5)

# Text Input
text_label = tk.Label(input_frame, text="Enter Text:", bg="#f0f0f0")
text_label.pack(anchor="w", padx=5)
text_input = tk.Text(input_frame, height=5, width=70)
text_input.pack(padx=5, pady=5, fill="x")

# File Input
file_frame = tk.Frame(input_frame, bg="#f0f0f0")
file_frame.pack(fill="x", padx=5, pady=5)
file_label = tk.Label(file_frame, text="Or Select File:", bg="#f0f0f0")
file_label.pack(side="left")
file_path_var = tk.StringVar()
file_entry = tk.Entry(file_frame, textvariable=file_path_var, width=50, state="readonly", bg="white")
file_entry.pack(side="left", padx=5)
file_btn = tk.Button(file_frame, text="Browse", command=browse_file, bg="#2196F3", fg="white",
                     font=("Helvetica", 9, "bold"))
file_btn.pack(side="left")

# Process Buttons
btn_frame = tk.Frame(input_frame, bg="#f0f0f0")
btn_frame.pack(fill="x", pady=5)
process_text_btn = tk.Button(btn_frame, text="Send Text", command=process_text, bg="#009688", fg="white",
                             font=("Helvetica", 9, "bold"))
process_text_btn.pack(side="left", padx=10)
process_file_btn = tk.Button(btn_frame, text="Send File", command=process_file, bg="#009688", fg="white",
                             font=("Helvetica", 9, "bold"))
process_file_btn.pack(side="left", padx=10)

# Output Frame
output_frame = tk.LabelFrame(root, text="Output Data", font=("Helvetica", 10, "bold"), bg="#f0f0f0", padx=10, pady=5)
output_frame.pack(fill="both", expand=True, padx=10, pady=5)
output_text = tk.Text(output_frame, height=10, width=70)
output_text.pack(padx=5, pady=5, fill="both", expand=True)

# Start the main loop
root.mainloop()