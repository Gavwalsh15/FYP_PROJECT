import struct

def preprocess(message_input):
    """
    Padding Stage for SHA_256
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

def preprocess_fp(file_path):
    """
    Process Files into bytearray then chunks for SHA_256
    """
    with open(file_path, 'rb') as f:
        message = bytearray(f.read())
    original_length_bits = len(message) * 8
    message.append(0x80)
    while len(message) % 64 != 56:
        message.append(0)
    message += struct.pack('>Q', original_length_bits)
    chunk_size = 64
    chunks = [message[i:i + chunk_size] for i in range(0, len(message), chunk_size)]
    return chunks

def send_block(text, uart_inst):
    """
    Send Text Chunks to FPGA
    """
    try:
        blocks = preprocess(text)
        print("Chunks", len(blocks))
        if len(blocks) == 1:
            block_ending = 'S'.encode()
        else:
            block_ending = 's'.encode()
        for j, block in enumerate(blocks, start=1):
            uart_inst.write(block[::-1] + block_ending)
            uart_inst.flush()
            if j < len(blocks):
                if j == len(blocks) - 1:
                    block_ending = 'L'.encode()
                else:
                    block_ending = 'l'.encode()

        data = uart_inst.read(33) # not entirely sure why it sends 33 but we move
        print(data[1::].hex())
        return data[1::].hex()

    except Exception as e:
        print(f"Error: {e}")

def send_block_file(file_path, uart_inst):
    """
    Send File Chunks to FPGA
    """
    try:
        blocks = preprocess_fp(file_path)
        print("Chunks", len(blocks))
        if len(blocks) == 1:
            block_ending = 'S'.encode()
        else:
            block_ending = 's'.encode()
        for j, block in enumerate(blocks, start=1):
            uart_inst.write(block[::-1] + block_ending)
            uart_inst.flush()
            if j < len(blocks):
                # wait_for_ready(uart)
                if j == len(blocks) - 1:
                    block_ending = 'L'.encode()
                else:
                    block_ending = 'l'.encode()


        data = uart_inst.read(33)  # not entirely sure why it sends 33 but we move
        print(data[1::].hex())
        return data[1::].hex()

    except Exception as e:
        print(f"Error: {e}")