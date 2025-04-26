import csv

import serial
import struct
import time
from sha256 import preprocess

def create_block(padded_message):
    """
    Create a predefined 64-byte block for SHA calculation
    """

    chunks = []
    # Process each 512-bit chunk
    for chunk_start in range(0, len(padded_message), 64):
        chunk = padded_message[chunk_start:chunk_start + 64]
        print(f"\nProcessing chunk: {chunk.hex()}")
        chunks.extend(chunk)

    return chunks


def send_block(port, blocks):
    """
    Send a 64-byte block over serial port
    """
    try:
        # Open serial port
        ser = serial.Serial(
            port=port,
            baudrate=115200,
            timeout=1
        )

        block_ending = ',s'.encode()
        start_time = time.time()
        for j, block in enumerate(blocks, start=1):
            # Avoid excessive print debugging
            # print(f"Sending Block (Hex): {block.hex()}")

            ser.write(block + block_ending)  # Send the block

            # Check for response
            if j < len(blocks):  # Don't wait after the last block
                while ser.readline() != b'=== Waiting to receive block ===\r\n':
                    time.sleep(0.0001)  # Short sleep to avoid hogging CPU
                block_ending = ',l'.encode()

        end_time = time.time()
        total_time = end_time - start_time
        while True:
            if ser.in_waiting > 0:  # Check if data is available
                data = ser.readline().decode('utf-8').strip()  # Read and decode
                return total_time


        # Close the serial port
        ser.close()

    except serial.SerialException as e:
        print(f"Error sending block: {e}")


def main():
    # Create block
    messages = [
        "A" * 1024 * 1, "B" * 1024 * 2, "C" * 1024 * 3,
        "D" * 1024 * 4, "E" * 1024 * 5, "F" * 1024 * 6,
        "G" * 1024 * 7, "H" * 1024 * 8, "I" * 1024 * 9,
        "J" * 1024 * 10
    ]

    # Create or open CSV file
    csv_filename = '../data_plotting/transfer_stats.csv'
    csv_header = ['Size (bytes)', 'Transfer Time (s)']

    with open(csv_filename, 'w', newline='') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(csv_header)

        for files in messages:
            _ , chunks = preprocess(message_input=files)  # Send block
            total_time = send_block("COM4", chunks)

            writer.writerow([len(files), f"{total_time:.4f}"])
            print(f"{total_time:.4f}")

if __name__ == "__main__":
    main()
