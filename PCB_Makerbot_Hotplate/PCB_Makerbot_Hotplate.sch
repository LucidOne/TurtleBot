EESchema Schematic File Version 2  date Mon 30 Jul 2012 06:30:31 PM EDT
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
LIBS:PCB_Makerbot_Hotplate-cache
EELAYER 25  0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Thingomatic Heater Board v1.1"
Date "30 jul 2012"
Rev "1"
Comp "Improved by I Heart Engineering"
Comment1 "Original Design by MakerBot Industries"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L R R1
U 1 1 4FE238D9
P 3250 3550
F 0 "R1" V 3330 3550 50  0000 C CNN
F 1 "R" V 3250 3550 50  0000 C CNN
	1    3250 3550
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 4FE238E8
P 3550 3550
F 0 "R2" V 3630 3550 50  0000 C CNN
F 1 "R" V 3550 3550 50  0000 C CNN
	1    3550 3550
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 4FE23929
P 5100 3050
F 0 "R3" V 5180 3050 50  0000 C CNN
F 1 "R" V 5100 3050 50  0000 C CNN
	1    5100 3050
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 4FE23938
P 3550 3050
F 0 "D1" H 3550 3150 50  0000 C CNN
F 1 "LED" H 3550 2950 50  0000 C CNN
	1    3550 3050
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 4FE23947
P 5100 3650
F 0 "R4" V 5180 3650 50  0000 C CNN
F 1 "R" V 5100 3650 50  0000 C CNN
	1    5100 3650
	1    0    0    -1  
$EndComp
$Comp
L CONN_6 P2
U 1 1 4FE23965
P 6500 3500
F 0 "P2" V 6450 3500 60  0000 C CNN
F 1 "CONN_6" V 6550 3500 60  0000 C CNN
	1    6500 3500
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P3
U 1 1 4FE23975
P 6500 4050
F 0 "P3" V 6450 4050 40  0000 C CNN
F 1 "CONN_2" V 6550 4050 40  0000 C CNN
	1    6500 4050
	1    0    0    -1  
$EndComp
Text Label 6150 3950 2    60   ~ 0
MOTOR-
Text Label 6150 4150 2    60   ~ 0
MOTOR+
Text Label 6150 3250 2    60   ~ 0
GND
Text Label 6150 3350 2    60   ~ 0
5V
Text Label 6150 3450 2    60   ~ 0
SIG
Text Label 6150 3650 2    60   ~ 0
HEATER-
Text Label 6150 3550 2    60   ~ 0
+12V
Text Label 6150 3750 2    60   ~ 0
MOTOR-
Text Label 3550 2800 2    60   ~ 0
+12V
Text Label 4100 2800 2    60   ~ 0
MOTOR+
Text Label 3700 3900 0    60   ~ 0
HEATER-
$Comp
L CONN_2 P1
U 1 1 4FE23BC7
P 4500 3650
F 0 "P1" V 4450 3650 40  0000 C CNN
F 1 "CONN_2" V 4550 3650 40  0000 C CNN
	1    4500 3650
	-1   0    0    1   
$EndComp
$Comp
L C C1
U 1 1 4FE23C4D
P 5350 3650
F 0 "C1" H 5400 3750 50  0000 L CNN
F 1 "C" H 5400 3550 50  0000 L CNN
	1    5350 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3900 3700 3900
Wire Wire Line
	3550 3900 3550 3800
Wire Wire Line
	3250 3900 3250 3800
Connection ~ 3550 3900
Wire Wire Line
	3250 2800 3250 3300
Wire Wire Line
	3250 2800 4100 2800
Wire Wire Line
	3550 2800 3550 2850
Connection ~ 3550 2800
Wire Wire Line
	5100 3400 5100 3300
Wire Wire Line
	4850 3550 4850 3400
Wire Wire Line
	4850 3400 5350 3400
Wire Wire Line
	4850 3750 4850 3900
Wire Wire Line
	4850 3900 5350 3900
Wire Wire Line
	5350 3900 5350 3850
Connection ~ 5100 3900
Wire Wire Line
	5350 3400 5350 3450
Connection ~ 5100 3400
Text Label 5100 2800 2    60   ~ 0
5V
Wire Wire Line
	3550 3250 3550 3300
$EndSCHEMATC
