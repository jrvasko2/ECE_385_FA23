#include <stdio.h>
#include "xparameters.h"
#include <xil_types.h>
#include "platform.h"
#include <sleep.h>
#include "xparameters.h"
#include "arducam.h"

volatile uint32_t* camera_reset = (uint32_t*)XPAR_AXI_GPIO_1_BASEADDR;
volatile uint32_t* frame_capture = (uint32_t*)XPAR_AXI_GPIO_0_BASEADDR;

int main() {
	init_platform();
	ArducamCamera cam = createArducamCamera(0);
	begin(&cam);
	takePicture(&cam, CAM_IMAGE_MODE_96X96, CAM_IMAGE_PIX_FMT_RGB565);

	while (1) {
		if (*frame_capture) {
			xil_printf("byte read\n");
			uint32_t len = cam.receivedLength;
			if (len) {
				u8 returnByte = readByte(&cam);
				xil_printf("%x", returnByte);
				xil_printf("%x", len);
			}
			while (*frame_capture){
				sleep(1);
			}
		} else if (*camera_reset) {
			xil_printf("reset\n");
			reset(&cam);
			while (*camera_reset){
				sleep(1);
			}
		}
	}
	cleanup_platform();
	return 0;
}
