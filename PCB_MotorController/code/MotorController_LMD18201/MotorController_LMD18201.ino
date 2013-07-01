#define PWM_pin 5
#define direction_pin 3
#define break_pin 4
#define thermal_flag 14


void setup(){
  Serial.begin(9600);
  pinMode(PWM_pin, OUTPUT);
  pinMode(direction_pin, OUTPUT);
  pinMode(break_pin, OUTPUT);
  pinMode(thermal_flag, INPUT);
  Serial.println("Starting...");
  digitalWrite(direction_pin, HIGH);
  digitalWrite(PWM_pin, HIGH);
}

void loop(){
//    int V_sense_val = analogRead(A1);
//    float V_sense = V_sense_val * (5.0 / 1023.0);
//    Serial.println(V_sense);
  digitalWrite(direction_pin, !digitalRead(direction_pin));
  digitalWrite(break_pin, LOW);
  delay(3000);
  
  Serial.println("breaking...");
  digitalWrite(break_pin, HIGH);
  
  Serial.println("Thermal flag: ");
  Serial.println(digitalRead(thermal_flag));
  while(!digitalRead(thermal_flag)){
    Serial.println("H-Bridge is too hot");
    delay(2000);
  }
  
  delay(2000);
}
