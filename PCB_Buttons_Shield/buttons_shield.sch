EESchema Schematic File Version 2  date Wed 20 Jun 2012 12:00:11 PM EDT
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
LIBS:buttons_shield-cache
EELAYER 25  0
EELAYER END
$Descr User 11000 8000
encoding utf-8
Sheet 1 1
Title "Buttons Shield for Turtlebot"
Date "20 jun 2012"
Rev ""
Comp "I Heart Engineering"
Comment1 "Designed by Carlos Chinchilla"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 6000 2950 0    60   ~ 0
E-STOP
Text Label 5900 2600 2    60   ~ 0
5V
$Comp
L CONN_4 P11
U 1 1 4FBE9D25
P 6250 2550
F 0 "P11" V 6200 2550 50  0000 C CNN
F 1 "CONN_4" V 6300 2550 50  0000 C CNN
	1    6250 2550
	1    0    0    -1  
$EndComp
Text Label 5900 2400 2    60   ~ 0
7
Text Label 6500 1950 2    60   ~ 0
A2
Text Label 6500 1850 2    60   ~ 0
A1
Text Label 6500 1750 2    60   ~ 0
A0
Text Label 6500 1650 2    60   ~ 0
12
Text Label 6500 1550 2    60   ~ 0
11
Text Label 6500 1450 2    60   ~ 0
10
Text Label 6500 1350 2    60   ~ 0
9
Text Label 6500 1250 2    60   ~ 0
8
$Comp
L CONN_8 P12
U 1 1 4FBE9C86
P 6850 1600
F 0 "P12" V 6800 1600 60  0000 C CNN
F 1 "CONN_8" V 6900 1600 60  0000 C CNN
	1    6850 1600
	1    0    0    -1  
$EndComp
Text Label 3100 1850 2    60   ~ 0
8
Text Label 3100 1750 2    60   ~ 0
9
Text Label 3100 1650 2    60   ~ 0
10
Text Label 3100 1550 2    60   ~ 0
11
Text Label 3100 1450 2    60   ~ 0
12
Text Label 3100 1350 2    60   ~ 0
13
Text Label 3100 1250 2    60   ~ 0
GND
Text Label 3100 1150 2    60   ~ 0
AREF
$Comp
L CONN_8 P7
U 1 1 4FBE9C27
P 3450 1500
F 0 "P7" V 3400 1500 60  0000 C CNN
F 1 "CONN_8" V 3500 1500 60  0000 C CNN
	1    3450 1500
	1    0    0    -1  
$EndComp
Text Label 3050 2850 2    60   ~ 0
RX
Text Label 3050 2750 2    60   ~ 0
TX
Text Label 3050 2650 2    60   ~ 0
2
Text Label 3050 2550 2    60   ~ 0
3
Text Label 3050 2450 2    60   ~ 0
4
Text Label 3050 2350 2    60   ~ 0
5
Text Label 3050 2250 2    60   ~ 0
6
Text Label 3050 2150 2    60   ~ 0
7
$Comp
L CONN_8 P6
U 1 1 4FBE9C04
P 3400 2500
F 0 "P6" V 3350 2500 60  0000 C CNN
F 1 "CONN_8" V 3450 2500 60  0000 C CNN
	1    3400 2500
	1    0    0    -1  
$EndComp
Text Label 1650 2650 2    60   ~ 0
A5
Text Label 1650 2550 2    60   ~ 0
A4
Text Label 1650 2450 2    60   ~ 0
A3
Text Label 1650 2350 2    60   ~ 0
A2
Text Label 1650 2250 2    60   ~ 0
A1
Text Label 1650 2150 2    60   ~ 0
A0
Text Label 5050 1250 2    60   ~ 0
5V
Text Label 1250 900  0    60   ~ 0
GND
Text Label 1050 700  0    60   ~ 0
RESET
Text Notes 1000 1150 0    60   ~ 0
RESET
Text Notes 3950 700  0    60   ~ 0
ICSP 6-PIN
Text Label 3800 1150 2    60   ~ 0
10
Text Label 3800 1050 2    60   ~ 0
13
Text Label 3800 950  2    60   ~ 0
12
Text Label 4600 1150 0    60   ~ 0
GND
Text Label 4600 1050 0    60   ~ 0
11
Text Label 4600 950  0    60   ~ 0
5V
$Comp
L CONN_3X2 P8
U 1 1 4FBE97E9
P 4200 1100
F 0 "P8" H 4200 1350 50  0000 C CNN
F 1 "CONN_3X2" V 4200 1150 40  0000 C CNN
	1    4200 1100
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH_SMALL SW1
U 1 1 4FBE9797
P 1150 800
F 0 "SW1" H 1300 910 30  0000 C CNN
F 1 "SW_PUSH_SMALL" H 1150 721 30  0000 C CNN
	1    1150 800 
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 4FBE9768
P 2000 1350
F 0 "R1" V 2080 1350 50  0000 C CNN
F 1 "R" V 2000 1350 50  0000 C CNN
	1    2000 1350
	0    -1   -1   0   
$EndComp
$Comp
L LED D1
U 1 1 4FBE975E
P 1750 1650
F 0 "D1" H 1750 1750 50  0000 C CNN
F 1 "LED" H 1750 1550 50  0000 C CNN
	1    1750 1650
	0    1    1    0   
$EndComp
$Comp
L GND #PWR01
U 1 1 4FBE973E
P 700 1800
F 0 "#PWR01" H 700 1800 30  0001 C CNN
F 1 "GND" H 700 1730 30  0001 C CNN
	1    700  1800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 4FBE9735
P 1750 1950
F 0 "#PWR02" H 1750 1950 30  0001 C CNN
F 1 "GND" H 1750 1880 30  0001 C CNN
	1    1750 1950
	1    0    0    -1  
$EndComp
Text Label 2350 2850 2    60   ~ 0
RX
Text Label 2350 2750 2    60   ~ 0
TX
Text Label 2350 2650 2    60   ~ 0
2
Text Label 2350 2550 2    60   ~ 0
3
Text Label 2350 2450 2    60   ~ 0
4
Text Label 2350 2350 2    60   ~ 0
5
Text Label 2350 2250 2    60   ~ 0
6
Text Label 2350 2150 2    60   ~ 0
7
Text Label 2350 1850 2    60   ~ 0
8
Text Label 2350 1750 2    60   ~ 0
9
Text Label 2350 1650 2    60   ~ 0
10
Text Label 2350 1550 2    60   ~ 0
11
Text Label 2350 1450 2    60   ~ 0
12
Text Label 2350 1350 2    60   ~ 0
13
Text Label 2350 1250 2    60   ~ 0
GND
Text Label 2350 1150 2    60   ~ 0
AREF
Text Label 1050 2650 2    60   ~ 0
A5
Text Label 1050 2550 2    60   ~ 0
A4
Text Label 1050 2450 2    60   ~ 0
A3
Text Label 1050 2350 2    60   ~ 0
A2
Text Label 1050 2250 2    60   ~ 0
A1
Text Label 1050 2150 2    60   ~ 0
A0
Text Label 1050 1850 2    60   ~ 0
VIN
Text Label 1050 1750 2    60   ~ 0
GND
Text Label 1050 1650 2    60   ~ 0
GND
Text Label 1050 1550 2    60   ~ 0
5V
Text Label 1050 1450 2    60   ~ 0
3.3V
Text Label 1050 1350 2    60   ~ 0
RESET
$Comp
L CONN_8 P9
U 1 1 4FBE9470
P 5400 1600
F 0 "P9" V 5350 1600 60  0000 C CNN
F 1 "CONN_8" V 5450 1600 60  0000 C CNN
	1    5400 1600
	1    0    0    -1  
$EndComp
$Comp
L CONN_8 P4
U 1 1 4FBE93D7
P 2700 1500
F 0 "P4" V 2650 1500 60  0000 C CNN
F 1 "CONN_8" V 2750 1500 60  0000 C CNN
	1    2700 1500
	1    0    0    -1  
$EndComp
$Comp
L CONN_8 P5
U 1 1 4FBE93CE
P 2700 2500
F 0 "P5" V 2650 2500 60  0000 C CNN
F 1 "CONN_8" V 2750 2500 60  0000 C CNN
	1    2700 2500
	1    0    0    -1  
$EndComp
$Comp
L CONN_6 P1
U 1 1 4FBE9062
P 1400 1600
F 0 "P1" V 1350 1600 60  0000 C CNN
F 1 "CONN_6" V 1450 1600 60  0000 C CNN
	1    1400 1600
	1    0    0    -1  
$EndComp
$Comp
L CONN_6 P2
U 1 1 4FBF0ED2
P 1400 2400
F 0 "P2" V 1350 2400 60  0000 C CNN
F 1 "CONN_6" V 1450 2400 60  0000 C CNN
	1    1400 2400
	1    0    0    -1  
$EndComp
$Comp
L CONN_6 P3
U 1 1 4FBF0ED8
P 2000 2400
F 0 "P3" V 1950 2400 60  0000 C CNN
F 1 "CONN_6" V 2050 2400 60  0000 C CNN
	1    2000 2400
	1    0    0    -1  
$EndComp
$Comp
L CONN_4 P13
U 1 1 4FBFF6B2
P 4250 1700
F 0 "P13" V 4200 1700 50  0000 C CNN
F 1 "CONN_4" V 4300 1700 50  0000 C CNN
	1    4250 1700
	1    0    0    -1  
$EndComp
Text Label 3900 1550 2    60   ~ 0
3.3V
$Comp
L GND #PWR03
U 1 1 4FDF7D56
P 6800 2850
F 0 "#PWR03" H 6800 2850 30  0001 C CNN
F 1 "GND" H 6800 2780 30  0001 C CNN
	1    6800 2850
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 4FDF7D65
P 6800 2550
F 0 "R2" V 6880 2550 50  0000 C CNN
F 1 "R" V 6800 2550 50  0000 C CNN
	1    6800 2550
	1    0    0    -1  
$EndComp
Text Label 6800 2250 0    60   ~ 0
7
$Comp
L CONN_4 P14
U 1 1 4FE1EF75
P 5400 2550
F 0 "P14" V 5350 2550 50  0000 C CNN
F 1 "CONN_4" V 5450 2550 50  0000 C CNN
	1    5400 2550
	-1   0    0    1   
$EndComp
$Comp
L CONN_4 P10
U 1 1 4FE1F0AF
P 4250 2250
F 0 "P10" V 4200 2250 50  0000 C CNN
F 1 "CONN_4" V 4300 2250 50  0000 C CNN
	1    4250 2250
	1    0    0    -1  
$EndComp
Text Label 3800 2100 2    60   ~ 0
GND
$Comp
L R R10
U 1 1 4FE1F1B8
P 6150 1950
F 0 "R10" V 6230 1950 50  0000 C CNN
F 1 "R" V 6150 1950 50  0000 C CNN
	1    6150 1950
	0    -1   -1   0   
$EndComp
$Comp
L R R9
U 1 1 4FE1F1C7
P 6150 1850
F 0 "R9" V 6230 1850 50  0000 C CNN
F 1 "R" V 6150 1850 50  0000 C CNN
	1    6150 1850
	0    -1   -1   0   
$EndComp
$Comp
L R R8
U 1 1 4FE1F1D6
P 6150 1750
F 0 "R8" V 6230 1750 50  0000 C CNN
F 1 "R" V 6150 1750 50  0000 C CNN
	1    6150 1750
	0    -1   -1   0   
$EndComp
$Comp
L R R7
U 1 1 4FE1F1E5
P 6150 1650
F 0 "R7" V 6230 1650 50  0000 C CNN
F 1 "R" V 6150 1650 50  0000 C CNN
	1    6150 1650
	0    -1   -1   0   
$EndComp
$Comp
L R R6
U 1 1 4FE1F1F4
P 6150 1550
F 0 "R6" V 6230 1550 50  0000 C CNN
F 1 "R" V 6150 1550 50  0000 C CNN
	1    6150 1550
	0    -1   -1   0   
$EndComp
$Comp
L R R5
U 1 1 4FE1F203
P 6150 1450
F 0 "R5" V 6230 1450 50  0000 C CNN
F 1 "R" V 6150 1450 50  0000 C CNN
	1    6150 1450
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 4FE1F212
P 6150 1350
F 0 "R4" V 6230 1350 50  0000 C CNN
F 1 "R" V 6150 1350 50  0000 C CNN
	1    6150 1350
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 4FE1F221
P 6150 1250
F 0 "R3" V 6230 1250 50  0000 C CNN
F 1 "R" V 6150 1250 50  0000 C CNN
	1    6150 1250
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR04
U 1 1 4FE1F230
P 5850 2050
F 0 "#PWR04" H 5850 2050 30  0001 C CNN
F 1 "GND" H 5850 1980 30  0001 C CNN
	1    5850 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  1750 1050 1750
Wire Wire Line
	1050 1650 700  1650
Wire Wire Line
	700  1650 700  1800
Connection ~ 700  1750
Wire Wire Line
	1750 1950 1750 1850
Wire Wire Line
	2350 1350 2250 1350
Wire Wire Line
	1750 1450 1750 1350
Wire Wire Line
	5050 1250 4950 1250
Wire Wire Line
	4950 1250 4950 1950
Wire Wire Line
	4950 1950 5050 1950
Wire Wire Line
	5050 1850 4950 1850
Connection ~ 4950 1850
Wire Wire Line
	5050 1750 4950 1750
Connection ~ 4950 1750
Wire Wire Line
	5050 1650 4950 1650
Connection ~ 4950 1650
Wire Wire Line
	5050 1550 4950 1550
Connection ~ 4950 1550
Wire Wire Line
	5050 1450 4950 1450
Connection ~ 4950 1450
Wire Wire Line
	5050 1350 4950 1350
Connection ~ 4950 1350
Wire Wire Line
	3900 1850 3800 1850
Wire Wire Line
	3800 1850 3800 1550
Wire Wire Line
	3800 1550 3900 1550
Wire Wire Line
	3900 1650 3800 1650
Connection ~ 3800 1650
Wire Wire Line
	3900 1750 3800 1750
Connection ~ 3800 1750
Wire Wire Line
	6800 2850 6800 2800
Wire Wire Line
	6800 2300 6800 2250
Wire Wire Line
	5900 2400 5750 2400
Wire Wire Line
	5900 2500 5750 2500
Wire Wire Line
	5900 2600 5750 2600
Wire Wire Line
	5900 2700 5750 2700
Wire Wire Line
	3800 2400 3900 2400
Wire Wire Line
	3800 2100 3800 2400
Wire Wire Line
	3800 2300 3900 2300
Wire Wire Line
	3900 2200 3800 2200
Connection ~ 3800 2300
Wire Wire Line
	3900 2100 3800 2100
Connection ~ 3800 2200
Wire Wire Line
	5850 1250 5850 2050
Wire Wire Line
	5850 1950 5900 1950
Wire Wire Line
	5900 1850 5850 1850
Connection ~ 5850 1950
Wire Wire Line
	5900 1750 5850 1750
Connection ~ 5850 1850
Wire Wire Line
	5900 1650 5850 1650
Connection ~ 5850 1750
Wire Wire Line
	5900 1550 5850 1550
Connection ~ 5850 1650
Wire Wire Line
	5900 1450 5850 1450
Connection ~ 5850 1550
Wire Wire Line
	5900 1350 5850 1350
Connection ~ 5850 1450
Wire Wire Line
	5900 1250 5850 1250
Connection ~ 5850 1350
Wire Wire Line
	6500 1250 6400 1250
Wire Wire Line
	6500 1350 6400 1350
Wire Wire Line
	6500 1450 6400 1450
Wire Wire Line
	6500 1550 6400 1550
Wire Wire Line
	6500 1650 6400 1650
Wire Wire Line
	6500 1750 6400 1750
Wire Wire Line
	6500 1850 6400 1850
Wire Wire Line
	6500 1950 6400 1950
Text Notes 6600 2150 2    60   ~ 0
To Buttons
$EndSCHEMATC
