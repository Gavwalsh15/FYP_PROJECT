#include "platform.h"
#include "xgpio.h"
#include "xparameters.h"
#include "xil_printf.h"
#include "sleep.h"
#include "xbram.h"
#include "xuartlite.h"

// Define the base address of the BRAM
#define BRAM_SIZE_WORDS 1024
#define START_CHANNEL 1
#define COMPLETE_CHANNEL 2

// Define GPIO commands
#define GPIO_NO_OP      0x0
#define GPIO_START_HASH 0x1
#define GPIO_RESET_HASH 0x2
#define GPIO_LARGE_HASH 0x3

// Global instances
XGpio RW_pin;
XUartLite UartLite;
XBram Bram;

int init_system() {
    int status;
    XBram_Config *BramConfigPtr;
    XUartLite_Config *UartConfigPtr;

    // Initialize GPIO
    status = XGpio_Initialize(&RW_pin, XPAR_AXI_GPIO_0_DEVICE_ID);
    if (status != XST_SUCCESS) {
        xil_printf("GPIO Initialization Failed\n");
        return XST_FAILURE;
    }

    // Configure GPIO channels
    XGpio_SetDataDirection(&RW_pin, START_CHANNEL, 0x0);  // Output
    XGpio_SetDataDirection(&RW_pin, COMPLETE_CHANNEL, 0xFFFFFFFF);  // Input

    // Initialize BRAM
    BramConfigPtr = XBram_LookupConfig(XPAR_BRAM_0_DEVICE_ID);
    if (BramConfigPtr == NULL) {
        xil_printf("BRAM Configuration Lookup Failed\n");
        return XST_FAILURE;
    }

    status = XBram_CfgInitialize(&Bram, BramConfigPtr, BramConfigPtr->CtrlBaseAddress);
    if (status != XST_SUCCESS) {
        xil_printf("BRAM Initialization Failed\n");
        return XST_FAILURE;
    }

    // Initialize UartLite
    UartConfigPtr = XUartLite_LookupConfig(XPAR_UARTLITE_0_DEVICE_ID);
    if (UartConfigPtr == NULL) {
        xil_printf("UartLite Configuration Lookup Failed\n");
        return XST_FAILURE;
    }

    status = XUartLite_CfgInitialize(&UartLite, UartConfigPtr, UartConfigPtr->RegBaseAddr);
    if (status != XST_SUCCESS) {
        xil_printf("UartLite Initialization Failed\n");
        return XST_FAILURE;
    }

    // Flush UartLite receive buffer
    XUartLite_ResetFifos(&UartLite);

    xil_printf("System Initialization Successful\n");
    return XST_SUCCESS;
}

uint32_t read_gpio() {
    return XGpio_DiscreteRead(&RW_pin, COMPLETE_CHANNEL);
}

void send_gpio_command(uint8_t cmd) {
    XGpio_DiscreteWrite(&RW_pin, START_CHANNEL, cmd);
    msleep(10);  // Short delay
    XGpio_DiscreteWrite(&RW_pin, START_CHANNEL, GPIO_NO_OP);
}

void start_hash(void) {
    send_gpio_command(GPIO_START_HASH);
}

void reset_hash(void) {
    send_gpio_command(GPIO_RESET_HASH);
}

void large_hash(void) {
    send_gpio_command(GPIO_LARGE_HASH);
}

void write_to_bram(uint32_t offset, uint32_t data) {
    if (offset < BRAM_SIZE_WORDS) {
        XBram_WriteReg(XPAR_BRAM_0_BASEADDR, offset * 4, data);
        xil_printf("Writing 0x%08X to BRAM at address 0x%08X\r\n",
                          (unsigned int)data,
                          (unsigned int)(XPAR_BRAM_0_BASEADDR + (offset * 4)));
    } else {
        xil_printf("Error: Offset out of BRAM bounds\r\n");
    }
}

void msleep(uint32_t delay) {
    usleep(delay * 1000);
}

uint32_t read_from_bram(uint32_t offset) {
    if (offset < BRAM_SIZE_WORDS) {
        uint32_t data = XBram_ReadReg(XPAR_BRAM_0_BASEADDR + 0x100 + (offset * 4), 0);
        xil_printf("Read 0x%08X from BRAM at address 0x%08X\r\n",
                  (unsigned int)data,
                  (unsigned int)(XPAR_BRAM_0_BASEADDR + 0x100 + (offset * 4)));
        return data;
    } else {
        xil_printf("Error: Offset out of BRAM bounds\r\n");
        return 0;
    }
}

// Function to receive a block over UartLite
int receive_block(uint32_t* block) {
    unsigned char rx_buffer[64];  // Buffer to receive raw bytes
    int bytes_received = 0;

    xil_printf("Waiting to receive 64 bytes...\r\n");

    // Receive 64 bytes (16 * 4 bytes for a 16-word block)
    while (bytes_received < 64) {
        int result = XUartLite_Recv(&UartLite,
                                    rx_buffer + bytes_received,
                                    64 - bytes_received);
        if (result < 0) {
            xil_printf("Error receiving data\n");
            return XST_FAILURE;
        }
        bytes_received += result;
    }

    // Convert received bytes to 32-bit words
    for (int i = 0; i < 16; i++) {
        block[i] = (rx_buffer[i*4] << 24) |
                   (rx_buffer[i*4 + 1] << 16) |
                   (rx_buffer[i*4 + 2] << 8) |
                   (rx_buffer[i*4 + 3]);
    }

    return XST_SUCCESS;
}

int main() {
    init_platform();
    xil_printf("Platform Initialized Successfully.\r\n");

    // Initialize all system components
    int status = init_system();
    if (status != XST_SUCCESS) {
        xil_printf("System Initialization Failed.\r\n");
        return XST_FAILURE;
    }

    // Block to store received data
    uint32_t received_block[16];

    while (1) {
        xil_printf("\r\n=== Waiting to receive block ===\r\n");

        // Receive block
        if (receive_block(received_block) != XST_SUCCESS) {
            xil_printf("Block reception failed\n");
            continue;
        }

        // Print received block for verification
        xil_printf("Received Block:\r\n");
        for (int i = 0; i < 16; i++) {
            xil_printf("0x%08X ", received_block[i]);
            if ((i+1) % 4 == 0) xil_printf("\r\n");
        }



        // Reset the hash module
        reset_hash();
        msleep(100);  // Wait for reset to complete

        xil_printf("Writing received block to BRAM...\r\n");
		for (int i = 0; i < 16; i++) {
			write_to_bram(i, received_block[i]);
		}
        start_hash();
        xil_printf("Processing block...\r\n");
        while (!read_gpio());

        // Read and print hash result
        xil_printf("\r\nReading hash result...\r\n");
        uint32_t hash[8];
        for (int i = 0; i < 8; i++) {
            hash[i] = read_from_bram(i);
        }

        // Print complete hash
        xil_printf("Final Hash: ");
        for (int i = 0; i < 8; i++) {
            xil_printf("%08X", (unsigned int)hash[i]);
        }
        xil_printf("\r\n");

        // Wait before next iteration
        xil_printf("\r\nWaiting for next iteration...\r\n");
    }

    cleanup_platform();
    return 0;
}
