import processing.serial.*;

Serial myPort;        // The serial port
int xPos = 1;         // horizontal position of the graph
float inByte = 0;

void setup(){

  size(1000,1000);
  background(0); 
    println(Serial.list());


  myPort = new Serial(this, Serial.list()[0], 9600);


  myPort.bufferUntil('\n');

} 

void draw(){

  line(50,50,val,1000-val);
  strokeWeight(12);//beef up our white line
  stroke(255, 0, 0);//make the line white

}