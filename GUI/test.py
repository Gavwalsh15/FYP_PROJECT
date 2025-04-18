import struct
import serial
import time


def preprocess(MessageInput):
    # Preprocessing
    message = bytearray(MessageInput, 'utf-8')

    original_length_bits = len(message) * 8
    message.append(0x80)  # Append the '1' bit
    while len(message) % 64 != 56:
        message.append(0)  # Pad with zeroes
    message += struct.pack('>Q', original_length_bits)  # Append the message length as a 64-bit big-endian integer

    chunk_size = 64  # 512 bits = 64 bytes
    chunks = [message[i:i + chunk_size] for i in range(0, len(message), chunk_size)]

    return chunks


def wait_for_ready(uart):
    while True:
        if uart.in_waiting:
            ready_byte = uart.read()
            if ready_byte == b'\xff':  # 0xFF indicates ready
                return True


def send_block(text):
    uart = serial.Serial(
        port='COM4',
        baudrate=115200,
        bytesize=8,
        parity='N',
        stopbits=1,
        timeout=1
    )

    try:

        blocks = preprocess(text)
        print('blocks', blocks)
        block_ending = 's'.encode()
        for j, block in enumerate(blocks, start=1):
            print(block + block_ending)
            uart.write(block)

            # Check for response
            if j < len(blocks):  # Don't wait after the last block
                wait_for_ready(uart)
                block_ending = 'l'.encode()


        while True:
            print(uart.readline())
            time.sleep(0.0001)

    except Exception as e:
        print(f"Error: {e}")
    finally:
        uart.close()


if __name__ == "__main__":
    # text_message = "Artificial intelligence is changing how we work, learn, and connect with each other every day"
    text_message = "abc"
    send_block(text_message)
