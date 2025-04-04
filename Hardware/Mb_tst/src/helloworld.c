#include "xuartlite.h"
#include "xparameters.h"  // For device ID and base address definitions
#include <xil_printf.h>

#define UART_BASE_ADDR  0x40600000  // Master base address for UART
#define UART_DEVICE_ID  XPAR_UARTLITE_0_DEVICE_ID // Replace with your UART device ID

XUartLite UartLite;   /* The instance of the UART Lite Device */

int main(void) {
    int Status;
    u8 ReceivedChar;

    Status = XUartLite_Initialize(&UartLite, UART_DEVICE_ID);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    xil_printf("Staring Application");


    while(1){
    	// Receive a single character using XUartLite_Recv
		while(XUartLite_Recv(&UartLite, &ReceivedChar, 1) != 1);
		xil_printf("Received character: %c\r\n", ReceivedChar);

    }


    return 0;
}
