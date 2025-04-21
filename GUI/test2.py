import struct
import serial
import time

# Initialize global UART instance
uart = serial.Serial(
    port='COM4',
    baudrate=230400,  # 230400 //works best
    bytesize=8,
    parity='N',
    stopbits=1,
    timeout=1
)

def preprocess_message(message_input):
    """Preprocess message by padding and chunking into 512-bit blocks (64 bytes)."""
    message = bytearray(message_input, 'utf-8')
    original_length_bits = len(message) * 8
    message.append(0x80)  # Append the '1' bit
    while len(message) % 64 != 56:
        message.append(0)  # Pad with zeroes
    message += struct.pack('>Q', original_length_bits)  # Append the message length as a 64-bit big-endian integer

    return [message[i:i + 64] for i in range(0, len(message), 64)]


def preprocess_file(file_path):
    """Preprocess file content similar to message processing."""
    with open(file_path, 'rb') as f:
        message = bytearray(f.read())

    original_length_bits = len(message) * 8
    message.append(0x80)  # Append the '1' bit
    while len(message) % 64 != 56:
        message.append(0)  # Pad with zeroes
    message += struct.pack('>Q', original_length_bits)  # Append the message length as a 64-bit big-endian integer

    return [message[i:i + 64] for i in range(0, len(message), 64)]


def wait_for_ready():
    """Wait for the device to be ready to send the next block (indicated by 0xFF)."""
    while True:
        if uart.in_waiting:
            ready_byte = uart.read()
            if ready_byte == b'\xff':
                return True


def send_blocks(blocks):
    """Send blocks over UART and wait for response."""
    if len(blocks) == 1:
        block_ending = 'S'.encode()
    else:
        block_ending = 's'.encode()

    for j, block in enumerate(blocks, start=1):
        uart.write(block[::-1] + block_ending)  # Reverse the block and add the block ending

        # Wait for the receiver to be ready before sending the next block
        if j < len(blocks):
            wait_for_ready()

            # Change the block-ending based on whether it's the last block
            if j == len(blocks) - 1:
                block_ending = b'L'
            else:
                block_ending = b'l'  # For intermediate blocks

    msg = b''
    while True:
        data = uart.read()
        if data != b'\xff':
            msg += data

        # Once we have received the expected length, print the hash
        if (len(msg) == 31 and block_ending == b'S') or len(msg) == 32:
            print('Sha:', msg[::-1].hex())
            break


def send_data(data_input):
    """General function for sending data, either message or file."""
    blocks = preprocess_message(data_input) if isinstance(data_input, str) else preprocess_file(data_input)
    print("Chunks", len(blocks))
    send_blocks(blocks)


if __name__ == "__main__":
    try:

        # Messages to send
        messages = [
            "abc",
            "Artificial intelligence is changing how we work, learn, and connect with each other every day",
            'Hey guys, did you know that in terms of male human and female Pokémon breeding, Vaporeon is the most compatible Pokémon for humans? Not only are they in the field egg group, which is mostly comprised of mammals, Vaporeon are an average of 3”03’ tall and 63.9 pounds...'
        ]

        # Send messages
        for text_message in messages:
            start = time.time()
            send_data(text_message)
            finish = time.time()
            total_time = finish - start
            print(f"Total time for message: {total_time:.4f} seconds")

        # Example for sending a file
        start = time.time()
        send_data('./Poster.pdf')
        finish = time.time()
        total_time = finish - start
        print(f"Total time for file: {total_time:.4f} seconds")

    except Exception as e:
        print(f"Error initializing UART: {e}")

    finally:
        if uart:
            uart.close()  # Close UART connection when done
