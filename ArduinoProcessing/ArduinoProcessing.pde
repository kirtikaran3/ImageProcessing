

import processing.serial.*;
Serial port;
float brightness = 0;

void setup()
{
  size(500,500);
  port = new Serial(this, "/dev/ttyACM1", 9600);  
  port.bufferUntil('\n');  
}

void draw()
{
  background(brightness,0,0); 
  delay(1000);
}
  
void serialEvent (Serial port)
{
  brightness = float(port.readStringUntil('\n'));
} 