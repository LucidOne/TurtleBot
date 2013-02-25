/*
 http://www.engblaze.com/microcontroller-tutorial-avr-and-arduino-timer-interrupts/
 (target time) = (timer resolution) * (# timer counts + 1)
 (# timer counts + 1) = (target time) / (timer resolution)
 (# timer counts + 1) = (1 s) / (6.4e-5 s)
 (# timer counts + 1) = 15625
 (# timer counts) = 15625 - 1 = 15624
 */

#include <avr/io.h>
#include <avr/interrupt.h>

// Pins
#define Out1 7
#define Out2 6
#define en12 9
#define PotPin 0
#define ControlPin 3
#define LEDpin 13

// PWM Values
#define minDC 20 // Minimum duty cycle (0-255) to get motor moving from rest
#define th 10 // position threshold (0-1023)

boolean fp = false;

/*-------------------- Setup --------------------------------*/
void setup()
{
  Serial.begin(9600);
  pinMode(Out1,OUTPUT);
  pinMode(Out2,OUTPUT);
  pinMode(en12,OUTPUT);
  pinMode(LEDpin,OUTPUT);
  digitalWrite(LEDpin,LOW);
  forward();
  /*
  int v = analogRead(PotPin);
  forward();
  delay(5);
  if (analogRead(PotPin) > v){
    fp = true;//forward is positive
  }
  */
  // Initialize Timer2 to interrupt ever 1ms
  cli(); // clear global interrupts
  TCCR2B = 0x00;        //Disbale Timer2 while we set it up
  TCNT2  = 130;         //Reset Timer Count to 130 out of 255
  TIFR2  = 0x00;        //Timer2 INT Flag Reg: Clear Timer Overflow Flag
  TIMSK2 = 0x01;        //Timer2 INT Reg: Timer2 Overflow Interrupt Enable
  TCCR2A = 0x00;        //Timer2 Control Reg A: Wave Gen Mode normal
  TCCR2B = 0x05;        //Timer2 Control Reg B: Timer Prescaler set to 128
  sei(); //set global interrupts
  
  /*
  // initialize Timer1
  cli();          // disable global interrupts
  TCCR1A = 0;     // set entire TCCR1A register to 0
  TCCR1B = 0;     // same for TCCR1B

  // set compare match register to desired timer count:
  OCR1A = 14; //for ~1KHz
  // turn on CTC mode:
  TCCR1B |= (1 << WGM12);
  // Set CS10 and CS12 bits for 1024 prescaler:
  TCCR1B |= (1 << CS10);
  TCCR1B |= (1 << CS12);
  // enable timer compare interrupt:
  TIMSK1 |= (1 << OCIE1A);
  // enable global interrupts:
  sei();
  */
}// end setup()

/*-------------------- Loop ----------------------------------*/
void loop()
{
  for (int i = 18; i < 25; i ++){
    analogWrite(en12, i);
    Serial.println(i);
    delay(1000);
    analogWrite(en12,0);
    delay(1000);
  }
} // end loop()

/*-------------------- Interrupt ------------------------------*/
int count = 0;
ISR(TIMER2_OVF_vect)
{
  // DUTY CYCLE
  // ERROR
  // DIRECTION
  //current angle
  //desired angle
  count++;
  if(count > 999){
    digitalWrite(LEDpin,!digitalRead(LEDpin));
    count = 0;
  }
  TCNT2 = 130;           //Reset Timer to 130 out of 255
  TIFR2 = 0x00;          //Timer2 INT Flag Reg: Clear Timer Overflow Flag
} //end ISR()

/*-------------------- Helper Functions --_---------------------*/

void forward(){
  digitalWrite(Out1,HIGH);
  digitalWrite(Out2,LOW);
}

void backward(){
  digitalWrite(Out2,HIGH);
  digitalWrite(Out1,LOW);
}

void halt(){
  digitalWrite(Out1,HIGH);
  digitalWrite(Out2,HIGH);
}

void moveTo(const int p){
  while(p - th > analogRead(PotPin) || analogRead(PotPin) > p + th){
    if(analogRead(PotPin) < p - th){
      if(fp){
        do{
          forward();
        }
        while (analogRead(PotPin) < p - th);
      }
      else{
        do{
          backward();
        }
        while (analogRead(PotPin) < p - th);
      }
    }
    else { // if (val < p)
      if(fp){
        do{
          backward();
        }
        while (analogRead(PotPin) > p + th);
      }
      else{
        do{
          forward();
        }
        while (analogRead(PotPin) > p + th);
      }
    }
  }
  halt();
}
