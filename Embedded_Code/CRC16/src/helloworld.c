#include "platform.h"
#include "xgpio.h"
#include "xparameters.h"
#include "xil_printf.h"
#include "sleep.h"
#include "xbram.h"

// Define the base address of the BRAM
#define BRAM_SIZE_WORDS 1024
#define START_CHANNEL 1
#define COMPLETE_CHANNEL 2

// Define GPIO commands
#define GPIO_NO_OP      0x0
#define GPIO_START_HASH 0x1
#define GPIO_RESET_HASH 0x2

XGpio RW_pin;

int init_perf() {
    int status;
    XBram Bram;
    XBram_Config *ConfigPtr;

    status = XGpio_Initialize(&RW_pin, XPAR_AXI_GPIO_0_DEVICE_ID);
    if (status != XST_SUCCESS) {
        xil_printf("GPIO Input Initialization Failed\n");
        return XST_FAILURE;
    }

    XGpio_SetDataDirection(&RW_pin, START_CHANNEL, 0x0);  // Output
    XGpio_SetDataDirection(&RW_pin, COMPLETE_CHANNEL, 0xFFFFFFFF);  // Input

    ConfigPtr = XBram_LookupConfig(XPAR_BRAM_0_DEVICE_ID);
    if (ConfigPtr == NULL) {
        return XST_FAILURE;
    }

    status = XBram_CfgInitialize(&Bram, ConfigPtr, ConfigPtr->CtrlBaseAddress);
    if (status != XST_SUCCESS) {
        return XST_FAILURE;
    }

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

void write_to_bram(uint32_t offset, uint32_t data) {
    if (offset < BRAM_SIZE_WORDS) {
        XBram_WriteReg(XPAR_BRAM_0_BASEADDR, offset * 4, data);
        // xil_printf("Wrote 0x%08X to BRAM at address 0x%08X\r\n", (unsigned int)data, (unsigned int)(XPAR_BRAM_0_BASEADDR + offset * 4));
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

uint32_t read_bram(uint32_t offset) {
    if (offset < BRAM_SIZE_WORDS) {
        uint32_t data = XBram_ReadReg(XPAR_BRAM_0_BASEADDR + (offset * 4), 0);
        xil_printf("Read 0x%08X from BRAM at address 0x%08X\r\n",
                  (unsigned int)data,
                  (unsigned int)(XPAR_BRAM_0_BASEADDR + 0x100 + (offset * 4)));
        return data;
    } else {
        xil_printf("Error: Offset out of BRAM bounds\r\n");
        return 0;
    }
}


int main() {
    init_platform();
    xil_printf("Initialized Successfully.\r\n");

    int status = init_perf();
    if (status != XST_SUCCESS) {
        xil_printf("GPIO Initialization Failed.\r\n");
        return XST_FAILURE;
    }

    // Define both test blocks
    uint32_t test_block2[16] = {
        0x61626380, 0x00000000, 0x00000000, 0x00000000,
        0x00000000, 0x00000000, 0x00000000, 0x00000000,
        0x00000000, 0x00000000, 0x00000000, 0x00000000,
        0x00000000, 0x00000000, 0x00000000, 0x00000018
    };

    uint32_t test_block1[16] = {
        0x31323380, 0x00000000, 0x00000000, 0x00000000,
        0x00000000, 0x00000000, 0x00000000, 0x00000000,
        0x00000000, 0x00000000, 0x00000000, 0x00000000,
        0x00000000, 0x00000000, 0x00000000, 0x00000018
    };

    int current_block = 0; // Track which block we're using

    while (1) {
        // Select which test block to use
        uint32_t *current_test_block = (current_block == 0) ? test_block1 : test_block2;

        // Write the current test block to BRAM
        xil_printf("\r\nWriting test block %d to BRAM...\r\n", current_block + 1);
        for (int i = 0; i < 16; i++) {
            write_to_bram(i, current_test_block[i]);
        }
		for (int i = 0; i < 16; i++) {
			xil_printf("%08X", (unsigned int)message[i]);
		}
		xil_printf("\r\n");

        xil_printf("\r\n=== Starting new hash computation for block %d ===\r\n", current_block + 1);

        // Reset the hash module
        reset_hash();
        msleep(100);  // Wait for reset to complete

        // Start new hash computation
        start_hash();
        xil_printf("Hash computation started...\r\n");

        // Wait for completion
        while (read_gpio() != 1);

        xil_printf("Hash computation completed.\r\n");

        // Read hash result
        uint32_t hash[8];
        xil_printf("\r\nReading hash result...\r\n");
        for (int i = 0; i < 8; i++) {
            hash[i] = read_from_bram(i);
        }

        // Print complete hash in a single line
        xil_printf("\r\nComplete hash for block %d: ", current_block + 1);
        for (int i = 0; i < 8; i++) {
            xil_printf("%08X", (unsigned int)hash[i]);
        }
        xil_printf("\r\n");

        // Switch to the other block for next iteration
        current_block = !current_block;

        // Wait before next iteration
        xil_printf("\r\nWaiting for next iteration...\r\n");
        msleep(5000);
    }

    cleanup_platform();
    return 0;
}
