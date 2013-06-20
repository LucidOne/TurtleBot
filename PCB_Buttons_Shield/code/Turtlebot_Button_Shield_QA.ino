void setup() {
  Serial.begin(9600);
  Serial.println("B1\tB2\tB3\tB4\tB5\tB6");
  for(int i = 7; i<=12; i++)
    pinMode(i, INPUT);     
}

void loop(){
  for(int i = 7; i<=12; i++){
  if (digitalRead(i)) {     
    Serial.print("1");
  } 
  else {
    Serial.print("0");
  }
  Serial.print("\t");
  }
  Serial.print("\n");
}
