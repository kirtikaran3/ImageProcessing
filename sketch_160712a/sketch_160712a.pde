import processing.serial.*;
Serial myPort;
int current;
float inByte;
 
int[] yValues;
int w;
 
void setup()
{
  size(640, 360);
  w = width-10;
  strokeWeight(3);
  smooth(); // or noSmooth();
  yValues = new int[w];
  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 9600);
}
 
void draw()
{

  String inString = myPort.readStringUntil('\n');
 
  if(inString != null){
    inString = trim(inString);
    inByte = float(inString);
    current = int(map(inByte, 0, 1023, 0, height));
       
    background(55);
   
    for(int i = 1; i < w; i++) {
      yValues[i-1] = yValues[i];
    }
 
    yValues[w-1] = current;
   
    stroke(255, 200, 0);
    line(w, current, width, current);
    strokeWeight(1);
    line(0, current, width, current);
    strokeWeight(3);
 
    for(int i=1; i<w; i++) {
      stroke(220, 75, yValues[i]);
      point(i, yValues[i]);
    }
  }
}