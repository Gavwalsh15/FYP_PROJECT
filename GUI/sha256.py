import struct

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

def preprocess(message):
    # Preprocessing
    message = bytearray(message, 'utf-8')
    original_length_bits = len(message) * 8
    message.append(0x80)  # Append the '1' bit
    while len(message) % 64 != 56:
        message.append(0)  # Pad with zeroes
    message += struct.pack('>Q', original_length_bits)  # Append the message length as a 64-bit big-endian integer

    chunk_size = 64  # 512 bits = 64 bytes
    chunks = [message[i:i + chunk_size] for i in range(0, len(message), chunk_size)]

    for i, chunk in enumerate(chunks):
        print(f"Chunk {i + 1}: {chunk.hex()}")

    return message, chunks

def sha256(message):
    padded_message = preprocess(message)

    # Process each 512-bit chunk
    for chunk_start in range(0, len(padded_message), 64):
        chunk = padded_message[chunk_start:chunk_start + 64]
        print(f"\nProcessing chunk: {chunk.hex()}")

        # Prepare the message schedule array W
        W = [0] * 64
        for i in range(16):
            W[i] = struct.unpack('>I', chunk[i * 4:(i + 1) * 4])[0]
        for i in range(16, 64):
            s0 = right_rotate(W[i - 15], 7) ^ right_rotate(W[i - 15], 18) ^ (W[i - 15] >> 3)
            s1 = right_rotate(W[i - 2], 17) ^ right_rotate(W[i - 2], 19) ^ (W[i - 2] >> 10)
            W[i] = (W[i - 16] + s0 + W[i - 7] + s1) & 0xffffffff
        # print(f"Message schedule W: {W}")

        # Initialize working variables
        a, b, c, d, e, f, g, h = H
        print(f"Initial hash values: a={a:08x}, b={b:08x}, c={c:08x}, d={d:08x}, e={e:08x}, f={f:08x}, g={g:08x}, h={h:08x}")

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

            print(f"itter={i:02d}: a={a:08x}, b={b:08x}, c={c:08x}, d={d:08x}, e={e:08x}, f={f:08x}, g={g:08x}, h={h:08x} w={W[i]:08x}, temp1={temp1:08x}, temp2={temp2:08x}, ch={ch:08x}, maj={maj:08x}, S1={S1:08x}, S0={S0:08x}")

        # Update hash values
        H[0] = (H[0] + a) & 0xffffffff
        H[1] = (H[1] + b) & 0xffffffff
        H[2] = (H[2] + c) & 0xffffffff
        H[3] = (H[3] + d) & 0xffffffff
        H[4] = (H[4] + e) & 0xffffffff
        H[5] = (H[5] + f) & 0xffffffff
        H[6] = (H[6] + g) & 0xffffffff
        H[7] = (H[7] + h) & 0xffffffff

        # print(f"Updated hash values: {H}")

    # Produce the final hash value (big-endian)
    final_hash = ''.join(f'{value:08x}' for value in H)
    return final_hash

if __name__ == "__main__":
    message = input("Enter the message to hash: ")
    print("\n\nSHA-256 hash:", sha256(message))
