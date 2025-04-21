import struct
import serial
import time

uart = serial.Serial(
    port='COM4',
    baudrate=2000000,  # 230400
    bytesize=8,
    parity='N',
    stopbits=1,
    timeout=None,
    xonxoff=False,
    rtscts=False
)

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


def preprocessFP(FilePath):
    with open(FilePath, 'rb') as f:
        message = bytearray(f.read())

    original_length_bits = len(message) * 8
    message.append(0x80)  # Append the '1' bit
    while len(message) % 64 != 56:
        message.append(0)  # Pad with zeroes
    message += struct.pack('>Q', original_length_bits)  # Append the message length as a 64-bit big-endian integer

    chunk_size = 64  # 512 bits = 64 bytes
    chunks = [message[i:i + chunk_size] for i in range(0, len(message), chunk_size)]

    return chunks


def wait_for_ready():
    while True:
        if uart.in_waiting:
            if uart.read() == b'\xff':
                return True


def send_block(text):
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

            # Check for response
            if j < len(blocks):
                wait_for_ready()

                if j == len(blocks) - 1:
                    block_ending = 'L'.encode()
                else:
                    block_ending = 'l'.encode()

        msg = b''
        while True:
            data = uart.read()
            if data != b'\xff':
                msg += data

            if (len(msg) == 31 and block_ending == b'S') or len(msg) == 32:
                print('Sha:', msg[::-1].hex())
                break




    except Exception as e:
        print(f"Error: {e}")

def send_block_file(file_path):
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

            # Check for response
            if j < len(blocks):
                wait_for_ready()

                if j == len(blocks) - 1:
                    block_ending = 'L'.encode()
                else:
                    block_ending = 'l'.encode()

        msg = b''
        while True:
            data = uart.read()
            if data != b'\xff':
                msg += data

            if (len(msg) == 31 and block_ending == b'S') or len(msg) == 32:
                print('Sha:', msg[::-1].hex())
                break

    except Exception as e:
        print(f"Error: {e}")


if __name__ == "__main__":
    messages = [
    "abc",
    "Artificial intelligence is changing how we work, learn, and connect with each other every day",
    'Hey guys, did you know that in terms of male human and female Pokémon breeding, Vaporeon is the most compatible Pokémon for humans? Not only are they in the field egg group, which is mostly comprised of mammals, Vaporeon are an average of 3”03’ tall and 63.9 pounds, this means they’re large enough to be able handle human dicks, and with their impressive Base Stats for HP and access to Acid Armor, you can be rough with one. Due to their mostly water based biology, there’s no doubt in my mind that an aroused Vaporeon would be incredibly wet, so wet that you could easily have sex with one for hours without getting sore. They can also learn the moves Attract, Baby-Doll Eyes, Captivate, Charm, and Tail Whip, along with not having fur to hide nipples, so it’d be incredibly easy for one to get you in the mood. With their abilities Water Absorb and Hydration, they can easily recover from fatigue with enough water. No other Pokémon comes close to this level of compatibility. Also, fun fact, if you pull out enough, you can make your Vaporeon turn white. Vaporeon is literally built for human dick. Ungodly defense stat+high HP pool+Acid Armor means it can take cock all day, all shapes and sizes and still come for more'
    ]
    for text_message in messages:
        start = time.time()
        send_block(text_message)
        finish = time.time()
        total_time = finish - start
        print(f"Total time: {total_time:.4f}")



    start = time.time()
    send_block_file('C:/Users/gavwa/Downloads/FPGA.exe')
    finish = time.time()
    total_time = finish - start
    print(f"Total time: {total_time:.4f}")


    uart.close()
