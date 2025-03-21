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
            port='COM4',  # e.g., '/dev/ttyUSB0' or 'COM3'
            baudrate=115200,  # Adjust to match UartLite configuration
            timeout=1
        )
        for block in blocks:
            # Print block for verification
            print("Sending Block (Hex):")
            for i in range(0, len(block), 4):
                print(''.join(f'{x:02X}' for x in block[i:i + 4]), end=' ')

            print('\n')

            # Send the block
            ser.write(block)

        while True:
            if ser.in_waiting > 0:  # Check if data is available
                data = ser.readline().decode('utf-8').strip()  # Read and decode
                print(data)


        # Close the serial port
        ser.close()

    except serial.SerialException as e:
        print(f"Error sending block: {e}")


def main():
    # Create block
    _ , chunks = preprocess('abc')

    # Send block
    send_block("COM4", chunks)


if __name__ == "__main__":
    main()