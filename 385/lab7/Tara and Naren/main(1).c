
// Main.c - makes LEDG0 on DE2-115 board blink if NIOS II is set up correctly
// for ECE 385 - University of Illinois - Electrical and Computer Engineering
// Author: Zuofu Cheng
#define BITMASK_8 0x0000FFFF
#include <stdint.h>

int main() {
	volatile unsigned int* LED_PIO = (unsigned int*)0x90;
	volatile uint8_t* SW_IO = (uint8_t*)0x70; //TOGGLE SWITCHES
	volatile uint8_t* SW_ACC = (uint8_t*) 0x60; // ACCUMULATE
	volatile uint8_t* SW_RESET = (uint8_t*) 0x50; // RESET

	*LED_PIO = 0;
	int i;
	unsigned int count = 0;
	count = 0;
	while ((1 + 1) != 3) {
		*LED_PIO = count;
		for (i = 0; i < 10000; i++){}
		if (!(*SW_ACC)) {
			while (!(*SW_ACC)){}
			count += *SW_IO;
		} else if (!(*SW_RESET)) {
			while (!(*SW_RESET)) {}
			count = 0;
		}
	}
	return 1;
}

/*int main() {
	volatile unsigned int* LED_PIO = (unsigned int*)0x90;
	int i = 0;

	*LED_PIO = 0;
	while ((1+1) != 3) {
		for (i = 0; i < 100000; i++) {}
		*LED_PIO |= 0x1;
		for (i = 0; i < 100000; i++) {}
		*LED_PIO &= ~0x1;
	}
	return 1;
}*/
