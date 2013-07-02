Motor Controller Specification: 

* H-Brigde:
	Use the	LMD 18201
		55V max
		3A DC max
		Thermal flag and shutdown
		Internal clamp diodes
		Requires external R_sense resistor to measure current
	Or LMD 18200 which includes an internal R_sense

* Microcontroller
	Use the ATMEGA32U4RC-AU
		http://www.digikey.com/product-detail/en/ATMEGA32U4RC-AU/ATMEGA32U4RC-AU-ND/2507982
		32Kb memory
		8-bit
		16MHz
		AVR
		I²C, SPI, UART/USART, USB
		Internal oscillator and USB

* PWM
	Use micro-controller interrupts to create it

* Bang Bang (limit switches)
	Connected to microcontroller's interrupts

* Current Sensor
	low side sensing using R_sense on H-bridge

* Voltage
	Use 7805 to regulate 5V (Vss)
	Motor Voltage (Vs) is Vin protected by a fuse
	Share Grounds

* Fuse
	PTC fuse
		if SMD then 2A max, else use radial

* Power In
	Use USB micro connector for 5V input or Communication
	Use external power  screw terminals for Vs

* Encoder
	PWR, GND, A, B, Index
	use LS7366R 32-bit counter with serial interface
		Look at http://www.lsicsi.com/pdfs/Data_Sheets/LS7366R.pdf for code

* Hall effect sensor
	Look at Application notes http://www.freescale.com/files/microcontrollers/doc/app_note/AN4058.pdf

* Back EMF
	Read using ADC in microcontroller
	ADC reference connected to motor ground

* Potentiometer
	360+ degrees
		possible match: P12427CT-ND

* Motor
	1.3A Stall Current
	Voltage 3V - 22.2V (>10V decreases motor life)
	http://www.fingertechrobotics.com/proddetail.php?prod=ft-spark16

	Or

	Pitta Motor gm9413f154
	9V-25V, 6ADC, 9A peak

+-_+_+-++-_+_+-++-_+_+-++-_+_+-++-_+_+-++-_+_+-++-_+_+-++-_+_+-++-_+_+-++-_+_+-+

Motor Controller Notes

* H-Brigde:
	1.5 - 3 Amp
	Quad-Half H-bridge
		754410
		LM293

* PWM
	avoid MHz or GHz, stay between 40-100KHz
	Duty Cycle is gas pedal

* Current Sensor
	high side /low side
		Look at Texas Instruments INA226
	Try to use only one resistor