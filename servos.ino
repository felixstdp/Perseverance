//       FRONT
//  M1S1       M6S6
//    \         /
//     \       /
//  M2-----------M5
//     /       \
//    /         \
//  M3S3       M4S4
//        REAR

#include <Servo.h>

#define s1center 86 // posiciones de centrado de los servos
#define s3center 95
#define s4center 95
#define s6center 95

#define s1giro 140 // posiciones de giro
#define s3giro 37
#define s4giro 150
#define s6giro 40

Servo servo1;
Servo servo3;
Servo servo4;
Servo servo6;

#define D1 10
#define D2 16
#define D3 14
#define D4 15
boolean rotate = 0;

void setup() {
  
  pinMode(D1, INPUT);
  pinMode(D2, INPUT);
  pinMode(D3, INPUT);
  pinMode(D4, INPUT);
  
  servo1.attach(3); //pines para servos
  servo3.attach(6);
  servo4.attach(9);
  servo6.attach(5);
  
  servo1.write(s1center); //arranque en posicion central
  servo3.write(s3center);
  servo4.write(s4center);
  servo6.write(s6center);
  
}

void loop() {
  
  boolean rotate = (read(D1) && read(D4)) || (read(D2) && read(D3));
  
  if (rotate){
    servo1.write(s1giro); //posicion giro
    servo3.write(s3giro);
    servo4.write(s4giro);
    servo6.write(s6giro);
  }
  else
  {
    servo1.write(s1center); //arranque en posicion central
    servo3.write(s3center);
    servo4.write(s4center);
    servo6.write(s6center);
  }
  
}

boolean read(int pin)
{
  boolean in = 0;
  for (int i=0; i<5; i++)
  {
    in = in || digitalRead(pin);
    delay(2);
  }
  return in;
}
