EESchema Schematic File Version 2  date Tue 04 Dec 2012 12:47:53 PM EST
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:IHE
LIBS:strip-cache
EELAYER 27 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "DRINKS/ROFL"
Date "4 dec 2012"
Rev "01/02"
Comp "I Heart Engineering"
Comment1 "Made by Carlos Chinchilla"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L PLCC6_RGB_LED LED3
U 1 1 508A038B
P 5500 5700
F 0 "LED3" H 5700 5600 60  0000 C CNN
F 1 "PLCC6_RGB_LED" H 5450 5750 60  0000 C CNN
	1    5500 5700
	1    0    0    -1  
$EndComp
$Comp
L PLCC6_RGB_LED LED1
U 1 1 508A0398
P 3400 5700
F 0 "LED1" H 3600 5600 60  0000 C CNN
F 1 "PLCC6_RGB_LED" H 3350 5750 60  0000 C CNN
	1    3400 5700
	1    0    0    -1  
$EndComp
$Comp
L PLCC6_RGB_LED LED2
U 1 1 508A039E
P 4450 5700
F 0 "LED2" H 4650 5600 60  0000 C CNN
F 1 "PLCC6_RGB_LED" H 4400 5750 60  0000 C CNN
	1    4450 5700
	1    0    0    -1  
$EndComp
$Comp
L PLCC6_RGB_LED LED4
U 1 1 508A03A4
P 6550 5700
F 0 "LED4" H 6750 5600 60  0000 C CNN
F 1 "PLCC6_RGB_LED" H 6500 5750 60  0000 C CNN
	1    6550 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 4700 7900 4700
Wire Wire Line
	3100 4700 3100 4900
Wire Wire Line
	3400 4900 3400 4700
Connection ~ 3400 4700
Wire Wire Line
	3700 4700 3700 4900
Connection ~ 3700 4700
Wire Wire Line
	4150 4700 4150 4900
Connection ~ 4150 4700
Wire Wire Line
	4450 4900 4450 4700
Connection ~ 4450 4700
Wire Wire Line
	4750 4900 4750 4700
Connection ~ 4750 4700
Wire Wire Line
	5200 4900 5200 4700
Connection ~ 5200 4700
$Comp
L PLCC6_RGB_LED LED5
U 1 1 508A0DC8
P 7600 5700
F 0 "LED5" H 7800 5600 60  0000 C CNN
F 1 "PLCC6_RGB_LED" H 7550 5750 60  0000 C CNN
	1    7600 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4900 5500 4700
Connection ~ 5500 4700
Wire Wire Line
	5800 4700 5800 4900
Connection ~ 5800 4700
Wire Wire Line
	6250 4900 6250 4700
Connection ~ 6250 4700
Wire Wire Line
	6550 4900 6550 4700
Connection ~ 6550 4700
Wire Wire Line
	6850 4900 6850 4700
Connection ~ 6850 4700
Wire Wire Line
	7900 4700 7900 4900
Wire Wire Line
	7600 4900 7600 4700
Connection ~ 7600 4700
Wire Wire Line
	7300 4900 7300 4700
Connection ~ 7300 4700
$Comp
L TLC5940-PWP TLC1
U 1 1 508A088E
P 3650 3250
F 0 "TLC1" H 3650 3200 60  0000 C CNN
F 1 "TLC5940-PWP" V 3650 3600 60  0000 C CNN
	1    3650 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 508A08A2
P 2750 2650
F 0 "#PWR01" H 2750 2650 30  0001 C CNN
F 1 "GND" H 2750 2580 30  0001 C CNN
	1    2750 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2650 2750 2600
Wire Wire Line
	2750 2600 3050 2600
Text Label 3050 2700 2    60   ~ 0
D10
Text Label 3050 2800 2    60   ~ 0
D9
Text Label 3050 2900 2    60   ~ 0
SCK
Text Label 3050 3000 2    60   ~ 0
MOSI
Wire Wire Line
	3050 3000 2750 3000
$Comp
L GND #PWR02
U 1 1 508A0B9C
P 2750 3150
F 0 "#PWR02" H 2750 3150 30  0001 C CNN
F 1 "GND" H 2750 3080 30  0001 C CNN
	1    2750 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3150 2750 3100
Wire Wire Line
	2750 3100 3050 3100
Text Label 2750 3000 2    60   ~ 0
SIN
Text Label 3100 6500 0    60   ~ 0
B1
Text Label 3400 6500 0    60   ~ 0
G1
Text Label 3700 6500 0    60   ~ 0
R1
Text Label 4150 6500 0    60   ~ 0
B2
Text Label 4450 6500 0    60   ~ 0
G2
Text Label 4750 6500 0    60   ~ 0
R2
Text Label 5200 6500 0    60   ~ 0
B3
Text Label 5500 6500 0    60   ~ 0
G3
Text Label 5800 6500 0    60   ~ 0
R3
Text Label 6250 6500 0    60   ~ 0
B4
Text Label 6550 6500 0    60   ~ 0
G4
Text Label 6850 6500 0    60   ~ 0
R4
Text Label 7300 6500 0    60   ~ 0
B5
Text Label 7600 6500 0    60   ~ 0
G5
Text Label 7900 6500 0    60   ~ 0
R5
Text Label 3050 3400 2    60   ~ 0
B1
Text Label 3050 3300 2    60   ~ 0
G1
Text Label 3050 3200 2    60   ~ 0
R1
Text Label 3050 3700 2    60   ~ 0
B2
Text Label 3050 3600 2    60   ~ 0
G2
Text Label 3050 3500 2    60   ~ 0
R2
Text Label 4250 3900 0    60   ~ 0
B3
Text Label 3050 3900 2    60   ~ 0
G3
Text Label 3050 3800 2    60   ~ 0
R3
Text Label 4250 3600 0    60   ~ 0
B4
Text Label 4250 3700 0    60   ~ 0
G4
Text Label 4250 3800 0    60   ~ 0
R4
Text Label 4250 3300 0    60   ~ 0
B5
Text Label 4250 3400 0    60   ~ 0
G5
Text Label 4250 3500 0    60   ~ 0
R5
$Comp
L LED D1
U 1 1 508A0C17
P 8350 5350
F 0 "D1" H 8350 5450 50  0000 C CNN
F 1 "LED" H 8350 5250 50  0000 C CNN
	1    8350 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	7900 4800 8350 4800
Wire Wire Line
	8350 4800 8350 5150
Connection ~ 7900 4800
Text Label 8350 5550 0    60   ~ 0
WHITE
Text Label 4250 3200 0    60   ~ 0
WHITE
Text Label 4250 3000 0    60   ~ 0
SOUT
Text Label 4250 2900 0    60   ~ 0
D3
Text Label 4450 2900 0    60   ~ 0
GSCLK
Wire Wire Line
	4450 2900 4250 2900
Text Label 4250 2800 0    60   ~ 0
VCC
Text Label 4250 2600 0    60   ~ 0
VCC
Wire Wire Line
	4250 2700 4700 2700
$Comp
L GND #PWR03
U 1 1 508A0FE9
P 5200 2850
F 0 "#PWR03" H 5200 2850 30  0001 C CNN
F 1 "GND" H 5200 2780 30  0001 C CNN
	1    5200 2850
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 508A0FF8
P 4950 2700
F 0 "R3" V 5030 2700 50  0000 C CNN
F 1 "R" V 4950 2700 50  0000 C CNN
	1    4950 2700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5200 2400 5200 2850
$Comp
L R R1
U 1 1 508A11E6
P 2600 2500
F 0 "R1" V 2680 2500 50  0000 C CNN
F 1 "2K" V 2600 2500 50  0000 C CNN
	1    2600 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	2600 2750 2850 2750
Wire Wire Line
	2850 2750 2850 2700
Wire Wire Line
	2850 2700 3050 2700
Text Label 2600 2250 0    60   ~ 0
VCC
Text Label 4900 4500 2    60   ~ 0
VLED
Text Label 8500 2850 0    60   ~ 0
GND
Text Label 8500 2750 0    60   ~ 0
VCC
Text Label 8500 2650 0    60   ~ 0
VLED
Text Label 7700 2850 2    60   ~ 0
SCK
Text Label 7700 2750 2    60   ~ 0
GSCLK
Text Label 7700 2650 2    60   ~ 0
D10
Text Label 7700 2550 2    60   ~ 0
D9
Text Label 8500 2550 0    60   ~ 0
SIN
Text Label 7100 2850 0    60   ~ 0
GND
Text Label 7100 2750 0    60   ~ 0
VCC
Text Label 7100 2650 0    60   ~ 0
VLED
Text Label 6300 2850 2    60   ~ 0
SCK
Text Label 6300 2750 2    60   ~ 0
GSCLK
Text Label 6300 2650 2    60   ~ 0
D10
Text Label 6300 2550 2    60   ~ 0
D9
Text Label 7100 2550 0    60   ~ 0
SOUT
Text Notes 8450 2350 2    60   ~ 0
Input Connector
Text Notes 7150 2350 2    60   ~ 0
Output Connector
Text Notes 7950 3100 2    60   ~ 0
Board-to-board connectors
Text Notes 4050 4150 2    60   ~ 0
16-channel driver
Text Notes 5700 6700 2    60   ~ 0
RGB LEDs
NoConn ~ 4250 3100
NoConn ~ 4250 -1650
Text Notes 4750 2250 0    60   ~ 0
Trimmer or through hole
$Comp
L R R2
U 1 1 509976F1
P 4950 2400
F 0 "R2" V 5030 2400 50  0000 C CNN
F 1 "R" V 4950 2400 50  0000 C CNN
	1    4950 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4650 2700 4650 2400
Wire Wire Line
	4650 2400 4700 2400
Connection ~ 4650 2700
Connection ~ 5200 2700
Wire Wire Line
	4900 4700 4900 4500
Connection ~ 4900 4700
$Comp
L C C3
U 1 1 50B54711
P 5600 3500
F 0 "C3" H 5650 3600 50  0000 L CNN
F 1 "C" H 5650 3400 50  0000 L CNN
	1    5600 3500
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 50B5471E
P 5850 3500
F 0 "C4" H 5900 3600 50  0000 L CNN
F 1 "C" H 5900 3400 50  0000 L CNN
	1    5850 3500
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 50B54724
P 5350 3500
F 0 "C2" H 5400 3600 50  0000 L CNN
F 1 "C" H 5400 3400 50  0000 L CNN
	1    5350 3500
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 50B5472A
P 5100 3500
F 0 "C1" H 5150 3600 50  0000 L CNN
F 1 "C" H 5150 3400 50  0000 L CNN
	1    5100 3500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 50B54755
P 5100 3850
F 0 "#PWR04" H 5100 3850 30  0001 C CNN
F 1 "GND" H 5100 3780 30  0001 C CNN
	1    5100 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 50B54762
P 5350 3850
F 0 "#PWR05" H 5350 3850 30  0001 C CNN
F 1 "GND" H 5350 3780 30  0001 C CNN
	1    5350 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 50B54768
P 5600 3850
F 0 "#PWR06" H 5600 3850 30  0001 C CNN
F 1 "GND" H 5600 3780 30  0001 C CNN
	1    5600 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 50B5476E
P 5850 3850
F 0 "#PWR07" H 5850 3850 30  0001 C CNN
F 1 "GND" H 5850 3780 30  0001 C CNN
	1    5850 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3850 5600 3700
Wire Wire Line
	5850 3850 5850 3700
Wire Wire Line
	5350 3850 5350 3700
Wire Wire Line
	5100 3850 5100 3700
Wire Wire Line
	5100 3300 5100 3250
Wire Wire Line
	5100 3250 5350 3250
Wire Wire Line
	5350 3250 5350 3300
Wire Wire Line
	5600 3300 5600 3250
Wire Wire Line
	5600 3250 5850 3250
Wire Wire Line
	5850 3250 5850 3300
Text Label 5850 3250 2    60   ~ 0
VLED
Text Label 5300 3250 2    60   ~ 0
VCC
$Comp
L CONN_4X2 P1
U 1 1 50BE36B5
P 6700 2700
F 0 "P1" H 6700 2950 50  0000 C CNN
F 1 "OUT_CONN" V 6700 2700 40  0000 C CNN
	1    6700 2700
	1    0    0    -1  
$EndComp
$Comp
L CONN_4X2 P2
U 1 1 50BE36C2
P 8100 2700
F 0 "P2" H 8100 2950 50  0000 C CNN
F 1 "IN_CONN" V 8100 2700 40  0000 C CNN
	1    8100 2700
	1    0    0    -1  
$EndComp
$EndSCHEMATC
