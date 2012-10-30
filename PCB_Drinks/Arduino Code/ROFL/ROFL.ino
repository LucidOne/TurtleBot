/* Ring Of Fire Lights

    // Tlc.set(channel (0-15), value (0[off] - 4095[on])) 

Author: Carlos Chinchilla
April 2012
*/

#include "Tlc5940.h"

const int NUM_LEDS = 16 * NUM_TLCS;
const int CHANNELS = NUM_LEDS - 1;

void all_off(int b_min = 0){
  if (!b_min)
    Tlc.clear();
  else
      for (int i = 0; i<= CHANNELS; i++)
        Tlc.set(i,b_min);
  Tlc.update();
}

void all_on(int b_max  = 2500){
  b_max = b_max % 4096;
  for (int i = 0; i<= CHANNELS; i++)
    Tlc.set(i,b_max);
  Tlc.update();
}

void phaser_single(int b_max = 2500, int b_min = 0,int d = 65){
  all_off();
  for (int i = 0; i<= CHANNELS; i++){
    Tlc.set(i, b_max);
    Tlc.set((i-1) % NUM_LEDS, b_min);
    Tlc.update();
    delay(d);
  }
}

void phaser_delay(int b_max = 4095, int b_min = 0,int d = 65){
  all_off();
  int inc = 500;
  for (int i = 0; i<= CHANNELS; i++){
    Tlc.set(i, b_max);
    Tlc.set((i-1) % NUM_LEDS, b_max-(3*inc));    
    Tlc.set((i-2) % NUM_LEDS, b_max-(5*inc));    
    Tlc.set((i-3) % NUM_LEDS, b_max-(7*inc));    
    Tlc.set((i-4) % NUM_LEDS, b_max-(9*inc));
    Tlc.set((i-5) % NUM_LEDS, b_min);
    Tlc.update();
    delay(d);
  }
}

void blink_all(int b_max = 4095, int b_min = 0,int d_on = 200, int d_off = 200, int repeat = 3){
 for(int i = 0; i < repeat; i++){
  all_on(b_max);
  delay(d_on);
  all_off(b_min);
  delay(d_off);
 }
 }

void blink_alternate(int b_max = 2500, int b_min = 0, int d = 500, int repeat = 3){
 for(int i = 0; i < repeat; i++){
  for(int h = 0; h <= CHANNELS; h+= 2){
    Tlc.set(h,b_max);
    Tlc.set(h+1,b_min);
  }
  Tlc.update();
  delay(d);
    for(int h = 0; h <= CHANNELS; h+=2){
    Tlc.set(h,b_min);
    Tlc.set(h+1,b_max);
  }
   Tlc.update();
  delay(d);
 }
}
 
 void blink_half(int b_max = 2500, int b_min = 0, int d = 500, int repeat = 3){
 for(int i = 0; i < repeat; i++){
  for(int h = 0; h <= CHANNELS/2; h++){
    Tlc.set(h,b_max);
    Tlc.set(h+CHANNELS/2,b_min);
  }
  Tlc.update();
  delay(d);
    for(int h = 0; h <= CHANNELS/2; h++){
    Tlc.set(h,b_min);
    Tlc.set(h+CHANNELS/2,b_max);
  }
   Tlc.update();
  delay(d);
 }
 }
 
 void fade_all(int b_max = 4095, int b_min = 0,int d = 100, int repeat = 3){
  all_off();
  int b = 0;
 for(int i = 0; i < repeat; i++){
   for(;b <= b_max;b+=400){
    all_on(b);
    delay(d);
   }
   
  for(;b >= b_min ;b-=400){
    all_on(b);
    delay(d);
   }
 }
 }
 
 /*
 void stellar(){
   int a = random(0,CHANNELS);
   for
   int a_d = 100 + random(500,1000);
   int b = (random(0,CHANNELS) + a)% NUM_LEDS;
   int c = (random(0,CHANNELS) + b + a)% NUM_LEDS;
   int d = (random(0,CHANNELS) + b + a - c)% NUM_LEDS;*/
   

/*------------------------------------ARDUINO FUNCTIONS----------------------------------*/

void setup()
{
  Tlc.init();
}

void loop()
{

  //phaser_delay();
  //phaser_single();
  //all_on();
  //all_off();
  blink_alternate();
  //blink_half();
  //fade_all();
  //delay(500);

}

