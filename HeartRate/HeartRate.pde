import processing.serial.*;

Serial myPort;  // Create object from Serial class
int val, screen_increment, old_x=0, old_y=0;      // Data received from the serial port
String inString;  // Input string from serial port
int lf = 10;      // ASCII linefeed 
void setup() 
{

  size(1000, 600);
  String portName = Serial.list()[0];
  println(Serial.list());
  myPort = new Serial(this, portName, 115200);
  myPort.bufferUntil(lf);
  background(208,24,24);//make the background that cool blood red
}

void draw()
{
//nothing in here, this is kind of like the void loop in arduino
}

void serialEvent(Serial myPort) { //this is called whenever data is sent over by the arduino

  inString = myPort.readString();//read in the new data, and store in inString
  inString = trim(inString);//get rid of any crap that isn't numbers, like the line feed
  val = int(inString);//convert the string into a number we can use
  strokeWeight(12);//beef up our white line
  stroke(255, 255, 255);//make the line white
  
  line(old_x, old_y, screen_increment, 600-val);
  
  //store the current x, y as the old x,y, so it is used next time
  old_x = screen_increment;
  old_y = 600-val;
  
  //increment the x coordinate,  you can play with this value to speed things up
  screen_increment=screen_increment+2;
  
  //this is needed to reset things when the line crashes into the end of the screen
  if(screen_increment>(1000)){
    background(208,24,24); //refresh the screen, erases everything
    screen_increment=-50; 
  old_x = -50;
  old_y = 0;
  
  }
}