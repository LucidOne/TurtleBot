EESchema Schematic File Version 2  date Wed 15 Aug 2012 01:17:20 PM EDT
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
Date "15 aug 2012"
Rev ""
Comp "I Heart Engineering"
Comment1 "Designed by Carlos Chinchilla"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 7450 4900 0    60   ~ 0
E-STOP
Text Label 7350 4550 2    60   ~ 0
5V
$Comp
L CONN_4 P11
U 1 1 4FBE9D25
P 7700 4500
F 0 "P11" V 7650 4500 50  0000 C CNN
F 1 "CONN_4" V 7750 4500 50  0000 C CNN
	1    7700 4500
	1    0    0    -1  
$EndComp
Text Label 7350 4350 2    60   ~ 0
7
Text Label 7950 3900 2    60   ~ 0
A2
Text Label 7950 3800 2    60   ~ 0
A1
Text Label 7950 3700 2    60   ~ 0
A0
Text Label 7950 3600 2    60   ~ 0
12
Text Label 7950 3500 2    60   ~ 0
11
Text Label 7950 3400 2    60   ~ 0
10
Text Label 7950 3300 2    60   ~ 0
9
Text Label 7950 3200 2    60   ~ 0
8
$Comp
L CONN_8 P12
U 1 1 4FBE9C86
P 8300 3550
F 0 "P12" V 8250 3550 60  0000 C CNN
F 1 "CONN_8" V 8350 3550 60  0000 C CNN
	1    8300 3550
	1    0    0    -1  
$EndComp
Text Label 4550 3800 2    60   ~ 0
8
Text Label 4550 3700 2    60   ~ 0
9
Text Label 4550 3600 2    60   ~ 0
10
Text Label 4550 3500 2    60   ~ 0
11
Text Label 4550 3400 2    60   ~ 0
12
Text Label 4550 3300 2    60   ~ 0
13
Text Label 4550 3200 2    60   ~ 0
GND
Text Label 4550 3100 2    60   ~ 0
AREF
$Comp
L CONN_8 P7
U 1 1 4FBE9C27
P 4900 3450
F 0 "P7" V 4850 3450 60  0000 C CNN
F 1 "CONN_8" V 4950 3450 60  0000 C CNN
	1    4900 3450
	1    0    0    -1  
$EndComp
Text Label 4500 4800 2    60   ~ 0
RX
Text Label 4500 4700 2    60   ~ 0
TX
Text Label 4500 4600 2    60   ~ 0
2
Text Label 4500 4500 2    60   ~ 0
3
Text Label 4500 4400 2    60   ~ 0
4
Text Label 4500 4300 2    60   ~ 0
5
Text Label 4500 4200 2    60   ~ 0
6
Text Label 4500 4100 2    60   ~ 0
7
$Comp
L CONN_8 P6
U 1 1 4FBE9C04
P 4850 4450
F 0 "P6" V 4800 4450 60  0000 C CNN
F 1 "CONN_8" V 4900 4450 60  0000 C CNN
	1    4850 4450
	1    0    0    -1  
$EndComp
Text Label 3100 4600 2    60   ~ 0
A5
Text Label 3100 4500 2    60   ~ 0
A4
Text Label 3100 4400 2    60   ~ 0
A3
Text Label 3100 4300 2    60   ~ 0
A2
Text Label 3100 4200 2    60   ~ 0
A1
Text Label 3100 4100 2    60   ~ 0
A0
Text Label 6500 3200 2    60   ~ 0
5V
Text Label 2700 2850 0    60   ~ 0
GND
Text Label 2500 2650 0    60   ~ 0
RESET
Text Notes 2450 3100 0    60   ~ 0
RESET
Text Notes 5400 2650 0    60   ~ 0
ICSP 6-PIN
Text Label 5250 3100 2    60   ~ 0
10
Text Label 5250 3000 2    60   ~ 0
13
Text Label 5250 2900 2    60   ~ 0
12
Text Label 6050 3100 0    60   ~ 0
GND
Text Label 6050 3000 0    60   ~ 0
11
Text Label 6050 2900 0    60   ~ 0
5V
$Comp
L CONN_3X2 P8
U 1 1 4FBE97E9
P 5650 3050
F 0 "P8" H 5650 3300 50  0000 C CNN
F 1 "CONN_3X2" V 5650 3100 40  0000 C CNN
	1    5650 3050
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH_SMALL SW1
U 1 1 4FBE9797
P 2600 2750
F 0 "SW1" H 2750 2860 30  0000 C CNN
F 1 "SW_PUSH_SMALL" H 2600 2671 30  0000 C CNN
	1    2600 2750
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 4FBE9768
P 3450 3300
F 0 "R1" V 3530 3300 50  0000 C CNN
F 1 "R" V 3450 3300 50  0000 C CNN
	1    3450 3300
	0    -1   -1   0   
$EndComp
$Comp
L LED D1
U 1 1 4FBE975E
P 3200 3600
F 0 "D1" H 3200 3700 50  0000 C CNN
F 1 "LED" H 3200 3500 50  0000 C CNN
	1    3200 3600
	0    1    1    0   
$EndComp
$Comp
L GND #PWR01
U 1 1 4FBE973E
P 2150 3750
F 0 "#PWR01" H 2150 3750 30  0001 C CNN
F 1 "GND" H 2150 3680 30  0001 C CNN
	1    2150 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 4FBE9735
P 3200 3900
F 0 "#PWR02" H 3200 3900 30  0001 C CNN
F 1 "GND" H 3200 3830 30  0001 C CNN
	1    3200 3900
	1    0    0    -1  
$EndComp
Text Label 3800 4800 2    60   ~ 0
RX
Text Label 3800 4700 2    60   ~ 0
TX
Text Label 3800 4600 2    60   ~ 0
2
Text Label 3800 4500 2    60   ~ 0
3
Text Label 3800 4400 2    60   ~ 0
4
Text Label 3800 4300 2    60   ~ 0
5
Text Label 3800 4200 2    60   ~ 0
6
Text Label 3800 4100 2    60   ~ 0
7
Text Label 3800 3800 2    60   ~ 0
8
Text Label 3800 3700 2    60   ~ 0
9
Text Label 3800 3600 2    60   ~ 0
10
Text Label 3800 3500 2    60   ~ 0
11
Text Label 3800 3400 2    60   ~ 0
12
Text Label 3800 3300 2    60   ~ 0
13
Text Label 3800 3200 2    60   ~ 0
GND
Text Label 3800 3100 2    60   ~ 0
AREF
Text Label 2500 4600 2    60   ~ 0
A5
Text Label 2500 4500 2    60   ~ 0
A4
Text Label 2500 4400 2    60   ~ 0
A3
Text Label 2500 4300 2    60   ~ 0
A2
Text Label 2500 4200 2    60   ~ 0
A1
Text Label 2500 4100 2    60   ~ 0
A0
Text Label 2500 3800 2    60   ~ 0
VIN
Text Label 2500 3700 2    60   ~ 0
GND
Text Label 2500 3600 2    60   ~ 0
GND
Text Label 2500 3500 2    60   ~ 0
5V
Text Label 2500 3400 2    60   ~ 0
3.3V
Text Label 2500 3300 2    60   ~ 0
RESET
$Comp
L CONN_8 P9
U 1 1 4FBE9470
P 6850 3550
F 0 "P9" V 6800 3550 60  0000 C CNN
F 1 "CONN_8" V 6900 3550 60  0000 C CNN
	1    6850 3550
	1    0    0    -1  
$EndComp
$Comp
L CONN_8 P4
U 1 1 4FBE93D7
P 4150 3450
F 0 "P4" V 4100 3450 60  0000 C CNN
F 1 "CONN_8" V 4200 3450 60  0000 C CNN
	1    4150 3450
	1    0    0    -1  
$EndComp
$Comp
L CONN_8 P5
U 1 1 4FBE93CE
P 4150 4450
F 0 "P5" V 4100 4450 60  0000 C CNN
F 1 "CONN_8" V 4200 4450 60  0000 C CNN
	1    4150 4450
	1    0    0    -1  
$EndComp
$Comp
L CONN_6 P1
U 1 1 4FBE9062
P 2850 3550
F 0 "P1" V 2800 3550 60  0000 C CNN
F 1 "CONN_6" V 2900 3550 60  0000 C CNN
	1    2850 3550
	1    0    0    -1  
$EndComp
$Comp
L CONN_6 P2
U 1 1 4FBF0ED2
P 2850 4350
F 0 "P2" V 2800 4350 60  0000 C CNN
F 1 "CONN_6" V 2900 4350 60  0000 C CNN
	1    2850 4350
	1    0    0    -1  
$EndComp
$Comp
L CONN_6 P3
U 1 1 4FBF0ED8
P 3450 4350
F 0 "P3" V 3400 4350 60  0000 C CNN
F 1 "CONN_6" V 3500 4350 60  0000 C CNN
	1    3450 4350
	1    0    0    -1  
$EndComp
$Comp
L CONN_4 P13
U 1 1 4FBFF6B2
P 5700 3650
F 0 "P13" V 5650 3650 50  0000 C CNN
F 1 "CONN_4" V 5750 3650 50  0000 C CNN
	1    5700 3650
	1    0    0    -1  
$EndComp
Text Label 5350 3500 2    60   ~ 0
3.3V
$Comp
L GND #PWR03
U 1 1 4FDF7D56
P 8250 4800
F 0 "#PWR03" H 8250 4800 30  0001 C CNN
F 1 "GND" H 8250 4730 30  0001 C CNN
	1    8250 4800
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 4FDF7D65
P 8250 4500
F 0 "R2" V 8330 4500 50  0000 C CNN
F 1 "R" V 8250 4500 50  0000 C CNN
	1    8250 4500
	1    0    0    -1  
$EndComp
Text Label 8250 4200 0    60   ~ 0
7
$Comp
L CONN_4 P14
U 1 1 4FE1EF75
P 6850 4500
F 0 "P14" V 6800 4500 50  0000 C CNN
F 1 "CONN_4" V 6900 4500 50  0000 C CNN
	1    6850 4500
	-1   0    0    1   
$EndComp
$Comp
L CONN_4 P10
U 1 1 4FE1F0AF
P 5700 4200
F 0 "P10" V 5650 4200 50  0000 C CNN
F 1 "CONN_4" V 5750 4200 50  0000 C CNN
	1    5700 4200
	1    0    0    -1  
$EndComp
Text Label 5250 4050 2    60   ~ 0
GND
$Comp
L R R10
U 1 1 4FE1F1B8
P 7600 3900
F 0 "R10" V 7680 3900 50  0000 C CNN
F 1 "R" V 7600 3900 50  0000 C CNN
	1    7600 3900
	0    -1   -1   0   
$EndComp
$Comp
L R R9
U 1 1 4FE1F1C7
P 7600 3800
F 0 "R9" V 7680 3800 50  0000 C CNN
F 1 "R" V 7600 3800 50  0000 C CNN
	1    7600 3800
	0    -1   -1   0   
$EndComp
$Comp
L R R8
U 1 1 4FE1F1D6
P 7600 3700
F 0 "R8" V 7680 3700 50  0000 C CNN
F 1 "R" V 7600 3700 50  0000 C CNN
	1    7600 3700
	0    -1   -1   0   
$EndComp
$Comp
L R R7
U 1 1 4FE1F1E5
P 7600 3600
F 0 "R7" V 7680 3600 50  0000 C CNN
F 1 "R" V 7600 3600 50  0000 C CNN
	1    7600 3600
	0    -1   -1   0   
$EndComp
$Comp
L R R6
U 1 1 4FE1F1F4
P 7600 3500
F 0 "R6" V 7680 3500 50  0000 C CNN
F 1 "R" V 7600 3500 50  0000 C CNN
	1    7600 3500
	0    -1   -1   0   
$EndComp
$Comp
L R R5
U 1 1 4FE1F203
P 7600 3400
F 0 "R5" V 7680 3400 50  0000 C CNN
F 1 "R" V 7600 3400 50  0000 C CNN
	1    7600 3400
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 4FE1F212
P 7600 3300
F 0 "R4" V 7680 3300 50  0000 C CNN
F 1 "R" V 7600 3300 50  0000 C CNN
	1    7600 3300
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 4FE1F221
P 7600 3200
F 0 "R3" V 7680 3200 50  0000 C CNN
F 1 "R" V 7600 3200 50  0000 C CNN
	1    7600 3200
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR04
U 1 1 4FE1F230
P 7300 4000
F 0 "#PWR04" H 7300 4000 30  0001 C CNN
F 1 "GND" H 7300 3930 30  0001 C CNN
	1    7300 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 3700 2500 3700
Wire Wire Line
	2500 3600 2150 3600
Wire Wire Line
	2150 3600 2150 3750
Connection ~ 2150 3700
Wire Wire Line
	3200 3900 3200 3800
Wire Wire Line
	3800 3300 3700 3300
Wire Wire Line
	3200 3400 3200 3300
Wire Wire Line
	6500 3200 6400 3200
Wire Wire Line
	6400 3200 6400 3900
Wire Wire Line
	6400 3900 6500 3900
Wire Wire Line
	6500 3800 6400 3800
Connection ~ 6400 3800
Wire Wire Line
	6500 3700 6400 3700
Connection ~ 6400 3700
Wire Wire Line
	6500 3600 6400 3600
Connection ~ 6400 3600
Wire Wire Line
	6500 3500 6400 3500
Connection ~ 6400 3500
Wire Wire Line
	6500 3400 6400 3400
Connection ~ 6400 3400
Wire Wire Line
	6500 3300 6400 3300
Connection ~ 6400 3300
Wire Wire Line
	5350 3800 5250 3800
Wire Wire Line
	5250 3800 5250 3500
Wire Wire Line
	5250 3500 5350 3500
Wire Wire Line
	5350 3600 5250 3600
Connection ~ 5250 3600
Wire Wire Line
	5350 3700 5250 3700
Connection ~ 5250 3700
Wire Wire Line
	8250 4800 8250 4750
Wire Wire Line
	8250 4250 8250 4200
Wire Wire Line
	7350 4350 7200 4350
Wire Wire Line
	7350 4450 7200 4450
Wire Wire Line
	7350 4550 7200 4550
Wire Wire Line
	7350 4650 7200 4650
Wire Wire Line
	5250 4350 5350 4350
Wire Wire Line
	5250 4050 5250 4350
Wire Wire Line
	5250 4250 5350 4250
Wire Wire Line
	5350 4150 5250 4150
Connection ~ 5250 4250
Wire Wire Line
	5350 4050 5250 4050
Connection ~ 5250 4150
Wire Wire Line
	7300 3200 7300 4000
Wire Wire Line
	7300 3900 7350 3900
Wire Wire Line
	7350 3800 7300 3800
Connection ~ 7300 3900
Wire Wire Line
	7350 3700 7300 3700
Connection ~ 7300 3800
Wire Wire Line
	7350 3600 7300 3600
Connection ~ 7300 3700
Wire Wire Line
	7350 3500 7300 3500
Connection ~ 7300 3600
Wire Wire Line
	7350 3400 7300 3400
Connection ~ 7300 3500
Wire Wire Line
	7350 3300 7300 3300
Connection ~ 7300 3400
Wire Wire Line
	7350 3200 7300 3200
Connection ~ 7300 3300
Wire Wire Line
	7950 3200 7850 3200
Wire Wire Line
	7950 3300 7850 3300
Wire Wire Line
	7950 3400 7850 3400
Wire Wire Line
	7950 3500 7850 3500
Wire Wire Line
	7950 3600 7850 3600
Wire Wire Line
	7950 3700 7850 3700
Wire Wire Line
	7950 3800 7850 3800
Wire Wire Line
	7950 3900 7850 3900
Text Notes 8050 4100 2    60   ~ 0
To Buttons
$EndSCHEMATC
