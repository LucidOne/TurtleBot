#include <Servo.h>

Servo pwm;

#define PWM_pin 5
#define direction_pin 3
#define break_pin 4
#define thermal_flag 14


void setup(){
  Serial.begin(9600);
  pwm.attach(PWM_pin);
  pinMode(direction_pin, OUTPUT);
  pinMode(break_pin, OUTPUT);
  pinMode(thermal_flag, INPUT);
  Serial.println("Starting...");
  digitalWrite(break_pin, LOW);
}

void loop(){
  digitalWrite(direction_pin, HIGH);
  for(int val = 240; val <256; val += 1){
    pwm.write(val);
//    int V_sense_val = analogRead(A1);
//    float V_sense = V_sense_val * (5.0 / 1023.0);
    Serial.println(val);
//    Serial.print("\t");
//    Serial.println(V_sense);
    delay(2000);
  }
  Serial.println("breaking...");
  digitalWrite(break_pin, HIGH);
  Serial.println("Thermal flag: ");
  Serial.println(digitalRead(thermal_flag));
  delay(2000);
  digitalWrite(break_pin, LOW);
  digitalWrite(direction_pin, LOW);
  for(int val = 0; val <256; val += 10){
    pwm.write(val);
//    int V_sense_val = analogRead(A1);
//    float V_sense = V_sense_val * (5.0 / 1023.0);
    Serial.println(val);
//    Serial.print("\t");
//    Serial.println(V_sense);
    delay(2000);
  }
  Serial.println("breaking...");
  digitalWrite(break_pin, HIGH);
  Serial.println("Thermal flag: ");
  Serial.println(digitalRead(thermal_flag));
  delay(2000);
  digitalWrite(break_pin, LOW);
}
