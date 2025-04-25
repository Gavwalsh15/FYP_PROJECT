import csv
import struct
import time
import hashlib

# SHA-256 constants (as per the standard)
K = [
    0x428a2f98, 0x71374491, 0xb5c0fbcf, 0xe9b5dba5, 0x3956c25b, 0x59f111f1, 0x923f82a4, 0xab1c5ed5,
    0xd807aa98, 0x12835b01, 0x243185be, 0x550c7dc3, 0x72be5d74, 0x80deb1fe, 0x9bdc06a7, 0xc19bf174,
    0xe49b69c1, 0xefbe4786, 0x0fc19dc6, 0x240ca1cc, 0x2de92c6f, 0x4a7484aa, 0x5cb0a9dc, 0x76f988da,
    0x983e5152, 0xa831c66d, 0xb00327c8, 0xbf597fc7, 0xc6e00bf3, 0xd5a79147, 0x06ca6351, 0x14292967,
    0x27b70a85, 0x2e1b2138, 0x4d2c6dfc, 0x53380d13, 0x650a7354, 0x766a0abb, 0x81c2c92e, 0x92722c85,
    0xa2bfe8a1, 0xa81a664b, 0xc24b8b70, 0xc76c51a3, 0xd192e819, 0xd6990624, 0xf40e3585, 0x106aa070,
    0x19a4c116, 0x1e376c08, 0x2748774c, 0x34b0bcb5, 0x391c0cb3, 0x4ed8aa4a, 0x5b9cca4f, 0x682e6ff3,
    0x748f82ee, 0x78a5636f, 0x84c87814, 0x8cc70208, 0x90befffa, 0xa4506ceb, 0xbef9a3f7, 0xc67178f2,
]

# Initial hash values (H0-H7)
H = [
    0x6a09e667, 0xbb67ae85, 0x3c6ef372, 0xa54ff53a,
    0x510e527f, 0x9b05688c, 0x1f83d9ab, 0x5be0cd19,
]

def right_rotate(value, bits):
    """Right rotate a 32-bit integer."""
    return ((value >> bits) | (value << (32 - bits))) & 0xffffffff


def preprocess(messageInput=None, filePath=None):
    # Preprocessing
    message = None
    if filePath:
        with open(filePath, 'rb') as f:
            message = bytearray(f.read())
    elif messageInput:
        message = bytearray(messageInput, 'utf-8')

    original_length_bits = len(message) * 8
    message.append(0x80)  # Append the '1' bit
    while len(message) % 64 != 56:
        message.append(0)  # Pad with zeroes
    message += struct.pack('>Q', original_length_bits)  # Append the message length as a 64-bit big-endian integer

    chunk_size = 64  # 512 bits = 64 bytes
    chunks = [message[i:i + chunk_size] for i in range(0, len(message), chunk_size)]

    return message, chunks

def sha256(message_Input):
    padded_message, _ = preprocess(message_Input)
    # Process each 512-bit chunk
    H = [
        0x6a09e667, 0xbb67ae85, 0x3c6ef372, 0xa54ff53a,
        0x510e527f, 0x9b05688c, 0x1f83d9ab, 0x5be0cd19
    ]

    # Process each 512-bit chunk
    for chunk_start in range(0, len(padded_message), 64):
        chunk = padded_message[chunk_start:chunk_start + 64]

        # Prepare the message schedule array W
        W = [0] * 64
        for i in range(16):
            W[i] = struct.unpack('>I', chunk[i * 4:(i + 1) * 4])[0]
        for i in range(16, 64):
            s0 = right_rotate(W[i - 15], 7) ^ right_rotate(W[i - 15], 18) ^ (W[i - 15] >> 3)
            s1 = right_rotate(W[i - 2], 17) ^ right_rotate(W[i - 2], 19) ^ (W[i - 2] >> 10)
            W[i] = (W[i - 16] + s0 + W[i - 7] + s1) & 0xffffffff


        # Initialize working variables
        a, b, c, d, e, f, g, h = H

        # Main compression loop
        for i in range(64):
            S1 = right_rotate(e, 6) ^ right_rotate(e, 11) ^ right_rotate(e, 25)
            ch = (e & f) ^ (~e & g)
            temp1 = (h + S1 + ch + K[i] + W[i]) & 0xffffffff

            S0 = right_rotate(a, 2) ^ right_rotate(a, 13) ^ right_rotate(a, 22)
            maj = (a & b) ^ (a & c) ^ (b & c)
            temp2 = (S0 + maj) & 0xffffffff

            h = g
            g = f
            f = e
            e = (d + temp1) & 0xffffffff
            d = c
            c = b
            b = a
            a = (temp1 + temp2) & 0xffffffff

        # Update hash values
        H[0] = (H[0] + a) & 0xffffffff
        H[1] = (H[1] + b) & 0xffffffff
        H[2] = (H[2] + c) & 0xffffffff
        H[3] = (H[3] + d) & 0xffffffff
        H[4] = (H[4] + e) & 0xffffffff
        H[5] = (H[5] + f) & 0xffffffff
        H[6] = (H[6] + g) & 0xffffffff
        H[7] = (H[7] + h) & 0xffffffff

    # Produce the final hash value (big-endian)
    final_hash = ''.join(f'{value:08x}' for value in H)
    return final_hash

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
            start = time.time()
            sha256(files)
            finish = time.time()
            total_time = finish - start

            # Write stats to CSV
            writer.writerow([len(files), f"{total_time:.4f}"])
            print(f"{total_time:.4f}")

    print(f"Statistics have been saved to {csv_filename}")
