import processing.serial.*;

Serial port; 
int val, screen_increment, old_x=0, old_y=0;      
String inString;  
int lf = 10;   

void setup() 
{

  size(600, 600);
 // String portName = Serial.list()[4];
  //println(Serial.list());
  
 port = new Serial(this, "COM4", 115200);
 port.bufferUntil('.');
  background(208,24,24);
}

void draw()
{

}

void serialEvent(Serial myPort) {

  inString = myPort.readString();
  inString = trim(inString);
  val = int(inString);
  strokeWeight(12);
  stroke(255, 255, 255);
  
  line(old_x, old_y, screen_increment, 600-val);
  

  old_x = screen_increment;
  old_y = 600-val;
  

  screen_increment=screen_increment+2;
  

  if(screen_increment>(displayWidth-100)){
   background(208,24,24); 
   screen_increment=-50; 
  old_x = -50;
  old_y = 0;
  
  }
}