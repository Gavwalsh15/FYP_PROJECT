import struct
import serial
import time
import os
import csv

COM_PORT = 'COM4'
BAUD_RATE = 5_000_000


def preprocess(message_input):
    """
    Padding Stage
    """
    message = bytearray(message_input, 'utf-8')
    original_length_bits = len(message) * 8
    message.append(0x80)
    while len(message) % 64 != 56:
        message.append(0)
    message += struct.pack('>Q', original_length_bits)
    chunk_size = 64
    chunks = [message[i:i + chunk_size] for i in range(0, len(message), chunk_size)]

    return chunks

def preprocessFP(FilePath):
    with open(FilePath, 'rb') as f:
        message = bytearray(f.read())
    original_length_bits = len(message) * 8
    message.append(0x80)
    while len(message) % 64 != 56:
        message.append(0)
    message += struct.pack('>Q', original_length_bits)
    chunk_size = 64
    chunks = [message[i:i + chunk_size] for i in range(0, len(message), chunk_size)]
    return chunks

def send_block(text, uart):
    try:
        blocks = preprocess(text)
        print("Chunks", len(blocks))
        if len(blocks) == 1:
            block_ending = 'S'.encode()
        else:
            block_ending = 's'.encode()
        for j, block in enumerate(blocks, start=1):
            uart.write(block[::-1] + block_ending)
            uart.flush()
            if j < len(blocks):
                if j == len(blocks) - 1:
                    block_ending = 'L'.encode()
                else:
                    block_ending = 'l'.encode()

        data = uart.read(33) # not entirely sure why it sends 33 but we move
        print(data[1::].hex())




    except Exception as e:
        print(f"Error: {e}")

def send_block_file(file_path, uart):
    try:
        blocks = preprocessFP(file_path)
        print("Chunks", len(blocks))
        if len(blocks) == 1:
            block_ending = 'S'.encode()
        else:
            block_ending = 's'.encode()
        for j, block in enumerate(blocks, start=1):
            uart.write(block[::-1] + block_ending)
            uart.flush()
            if j < len(blocks):
                # wait_for_ready(uart)
                if j == len(blocks) - 1:
                    block_ending = 'L'.encode()
                else:
                    block_ending = 'l'.encode()


        data = uart.read(33)  # not entirely sure why it sends 33 but we move
        print(data[1::].hex())
    except Exception as e:
        print(f"Error: {e}")


if __name__ == "__main__":
    messages = [
        "A" * 1024 * 1, "B" * 1024 * 2, "C" * 1024 * 3,
        "D" * 1024 * 4, "E" * 1024 * 5, "F" * 1024 * 6,
        "G" * 1024 * 7, "H" * 1024 * 8, "I" * 1024 * 9,
        "J" * 1024 * 10, "K" * 1024 * 11, "L" * 1024 * 12,
        "M" * 1024 * 13, "N" * 1024 * 14, "O" * 1024 * 15,
        "P" * 1024 * 16, "Q" * 1024 * 17,
        "R" * 1024 * 18, "S" * 1024 * 19, "T" * 1024 * 20,
        "U" * 1024 * 21, "V" * 1024 * 22,
        "W" * 1024 * 23, "X" * 1024 * 24, "Y" * 1024 * 25,
        "Z" * 1024 * 26,
        "A1" * 1024 * 27, "B1" * 1024 * 28, "C1" * 1024 * 29,
        "D1" * 1024 * 30, "E1" * 1024 * 30, "F1" * 1024 * 40,
        "G1" * 1024 * 41, "H1" * 1024 * 42, "I1" * 1024 * 43,
        "J1" * 1024 * 44, "K1" * 1024 * 45, "L1" * 1024 * 48,
        "M1" * 1024 * 49, "N1" * 1024 * 50, "O1" * 1024 * 51,
        "P1" * 1024 * 52, "Q1" * 1024 * 53, "R1" * 1024 * 54,
        "S1" * 1024 * 55, "T1" * 1024 * 56, "U1" * 1024 * 57,
        "V1" * 1024 * 58, "W1" * 1024 * 59, "X1" * 1024 * 60,
        "Y1" * 1024 * 61, "Z1" * 1024 * 62,
        "A22" * 1024 * 63, "B22" * 1024 * 64, "C22" * 1024 * 65,
        "D22" * 1024 * 64, "E22" * 1024 * 66, "F22" * 1024 * 67,
        "G22" * 1024 * 68, "H22" * 1024 * 69, "I22" * 1024 * 70,
        "J22" * 1024 * 71, "K22" * 1024 * 72, "L22" * 1024 * 80,
        "M22" * 1024 * 73, "N22" * 1024 * 81, "O22" * 1024 * 82,
        "P22" * 1024 * 83, "Q22" * 1024 * 84, "R22" * 1024 * 85,
        "U22" * 1024 * 86, "V22" * 1024 * 87, "W22" * 1024 * 88,
        "X22" * 1024 * 89, "Y22" * 1024 * 90, "Z22" * 1024 * 91,
        ]

    # Create or open CSV file
    csv_filename = 'data_plotting/transfer_stats.csv'
    csv_header = ['Size (bytes)', 'Transfer Time (s)']

    with open(csv_filename, 'w', newline='') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(csv_header)

        for files in messages:
            uart = serial.Serial(
                port=COM_PORT,
                baudrate=BAUD_RATE,
                bytesize=8,
                parity='N',
                stopbits=1,
                timeout=None,
            )


            start = time.time()
            send_block(files, uart)
            finish = time.time()
            total_time = finish - start

            # Write stats to CSV
            writer.writerow([len(files), f"{total_time:.4f}"])
            print(f"{total_time:.4f}")
            uart.close()

print(f"Statistics have been saved to {csv_filename}")
