Motor Controller Specification Proposal 

* H-Brigde:
	LMD 18201
	55V max
	3A DC max
	Thermal flag and shutdown
	Internal clamp diodes

* Microcontroller
	ATMEGA32U4RC-AU http://www.digikey.com/product-detail/en/ATMEGA32U4RC-AU/ATMEGA32U4RC-AU-ND/2507982
	32Kb memory
	8-bit
	16MHz
	AVR
	I²C, SPI, UART/USART, USB
	Internal oscillator

* PWM
	Use microcontroller interrupts to create it

* Bang Bang (limit switches)

* Current Sensor
	low side sensing using R_sense on H-bridge

* Voltage
	Use 7805 to regulate 5V
	Motor Voltage is Vin protected by a fuse
	
* Fuse
	PTC fuse
		if SMD then 2A max

* Power In
	use USB micro connector for 5V input or Communication
	Use external power IN screw terminals for Vs

* Encoder
	PWR, GND, A, B, Index
	use LS7366R 32-bit counter with serial interface
		Look at http://www.lsicsi.com/pdfs/Data_Sheets/LS7366R.pdf for code

* Hall effect sensor
	Look at Application notes http://www.freescale.com/files/microcontrollers/doc/app_note/AN4058.pdf

* Back EMF
	Read using ADC in microcontroller
	have two separate grounds: 1) motor 2) Logic
	ADC reference connected to motor ground

* Potentiometer
	360+ degrees
		possible match: P12427CT-ND

* Motor
	1.3A Stall Current
	Voltage 3V - 22.2V (>10V decreases motor life)
	http://www.fingertechrobotics.com/proddetail.php?prod=ft-spark16

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

* Bang Bang (limit switches)


* Current Sensor
	high side /low side
		Look at Texas Instruments INA226
	Try to use only one resistor

* Motor
	1.3A Stall Current
	Voltage 3V - 22.2V (>10V decreases motor life)
	http://www.fingertechrobotics.com/proddetail.php?prod=ft-spark16