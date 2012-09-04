//Output Pins
int red = 3;
int green = 5;
int blue = 6;


void setup()  {
} 

void loop()  {
  //Insert functions from below here
  //example:
  //FlashRed(30,50);
  //StrobeRedGreenBlue(140,80);
  //StrobeRedGreenBlue(100, BPMtoMilliseconds(128));
  //StrobeRedGreenBlue(175, 400);
  //FlashAllRandomColor(200);
  FlashSomeRandomColor(200);

}

//Strobes Red
void FlashRed(int strength,int duration)
{
  //strength is safe at values of 0-180
  //duration is in milliseconds
  analogWrite(red,strength);
  delay(duration);
  analogWrite(red,0);
  delay(duration);
}

//Strobes Green
void FlashGreen(int strength,int duration)
{
  //strength is safe at values of 0-180
  //duration is in milliseconds
  analogWrite(green,strength);
  delay(duration);
  analogWrite(green,0);
  delay(duration);
}

//Strobes Blue
void FlashBlue(int strength,int duration)
{
  //strength is safe at values of 0-180
  //duration is in milliseconds
  analogWrite(blue,strength);
  delay(duration);
  analogWrite(blue,0);
  delay(duration);
}

//Strobes Red, Green, Blue in that order
void StrobeRedGreenBlue(int strength, int duration)
{
  FlashRed(strength,duration);
  FlashGreen(strength,duration);
  FlashBlue(strength,duration);  
}

//Uses all three lights equally
void FlashAllRandomColor(int duration) //Uses All Three lights
{
  //duration is in milliseconds
  analogWrite(red,random(0,180));
  analogWrite(green, random(0,180));
  analogWrite(blue, random(0,180));
  delay(duration);
  analogWrite(red,0);
  analogWrite(green, 0);
  analogWrite(blue, 0);
  delay(duration);
}

//Uses only two lights dominantly at a time so you get more saturated colors
void FlashSomeRandomColor(int duration) 
{
  //duration is in milliseconds
  int restrict = random(1,3); //Chooses which color to NOT use
  if(restrict==3)
  {
    //restrict = 3 -> NO BLUE
    analogWrite(red,random(0,180));
    analogWrite(green, random(0,180));
    analogWrite(blue, random(0,2));
  }
  if(restrict==2)
  {
    //restrict = 2 -> NO GREEN
    analogWrite(red,random(0,180));
    analogWrite(green, random(0,2));
    analogWrite(blue, random(0,180));
  }
  if(restrict==1)
  {
    //restrict = 1 -> NO RED
    analogWrite(red, random(0,2));
    analogWrite(green, random(0,180));
    analogWrite(blue, random(0,180));
  }
  //Reset the lights
  delay(duration);
  analogWrite(red,0);
  analogWrite(green, 0);
  analogWrite(blue, 0);
  delay(duration);
}
//Flash in any specific color
void FlashColor(int redStrength, int greenStrength, int blueStrength, int duration)
{
  //strength is safe at values of 0-180
  //duration is in milliseconds
  analogWrite(red,redStrength);
  analogWrite(green, greenStrength);
  analogWrite(blue, blueStrength);
  delay(duration);
  analogWrite(red,0);
  analogWrite(green, 0);
  analogWrite(blue, 0);
  delay(duration);
  
}
void flow(int redOffset, int blueOffset, int greenOffset)
{
  
}
int BPMtoMilliseconds(int BPM) //DOESNT WORK
{
  return (60*1000/BPM);
}
