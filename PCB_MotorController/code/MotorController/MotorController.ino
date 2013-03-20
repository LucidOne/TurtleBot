/*
 http://www.engblaze.com/microcontroller-tutorial-avr-and-arduino-timer-interrupts/
 (target time) = (timer resolution) * (# timer counts + 1)
 (# timer counts + 1) = (target time) / (timer resolution)
 (# timer counts + 1) = (1 s) / (6.4e-5 s)
 (# timer counts + 1) = 15625
 (# timer counts) = 15625 - 1 = 15624
 */
 
 /*
 http://arduinomega.blogspot.com/2011/05/timer2-and-overflow-interrupt-lets-get.html
 Timer2 is 8-bits so the max number it can count to is 255,
 preloading Timer2's counter with 130 leaves 125 cycles left to count.
 The Arduino has a clock of 16MHz so: (1/16E6) * 125 * 128 = 1ms
 */

#include <avr/io.h>
#include <avr/interrupt.h>

// Pins
#define Out1 7
#define Out2 6
#define en12 9
#define PotPin 0
#define LEDpin 13

// PWM Values
#define CPS 100 // counts per interrupt (Hz^ -1 or ms)
#define DCmin 20 // Minimum duty cycle (0-255) to get motor moving from rest
#define DCmax 255 // Max duty cycle (0-255) to get motor moving from rest
#define th 10 // position threshold (0-1023), safe th = 10
int error, duty, current, target, sCount=0; // duty cycle

boolean fp = false;

/*-------------------- Setup --------------------------------*/
void setup(){
  Serial.begin(9600);
  Serial.println("\nCurPos\tTarget\tError\tDuty C\tDir");
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
  analogWrite(en12, duty);
} // end loop()

/*-------------------- Interrupt ------------------------------*/
int count = 0;
ISR(TIMER2_OVF_vect)
{
  count++;
  if(count >= CPS){
    digitalWrite(LEDpin,!digitalRead(LEDpin));
    count = 0;
    
    // CURRENT
    current = analogRead(PotPin);
    Serial.print(current);
    Serial.print("\t");
    Serial.print(target);
    Serial.print("\t");
    
    // ERROR
    error = target - current;
    Serial.print(error);
    Serial.print("\t");
    
    // DUTY CYCLE
    duty = abs(error / 4);
    if (duty < DCmin){
      duty = DCmin;
    }
    if (duty > DCmax){
      duty = DCmax;
    }
    Serial.print(duty);
    Serial.print("\t");
  
    // DIRECTION
    if(error > th){
      forward();
      Serial.println("CCW");
    }
    else if (error < -th){
      backward();
      Serial.println("NA");
    }
    else{
      halt();
      Serial.println("Stoped");
      if(sCount++ >= 50){
        Serial.print("New target = ");
        Serial.println(target = random(0,255));
        sCount = 0;
      }
    }
    
    // Optional:
      //current angle
      //desired angle
  }
  TCNT2 = 130;           //Reset Timer to 130 out of 255
  TIFR2 = 0x00;          //Timer2 INT Flag Reg: Clear Timer Overflow Flag
} //end ISR()

/*-------------------- Helper Functions ------------------------*/

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
