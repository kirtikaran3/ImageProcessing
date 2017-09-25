float x=50; 
float y=50; 

void setup(){

size(400,400); 
 frameRate(50);
 } 

void draw(){
background(0);

fill(255,0,0);
ellipse(x,y,10,10); 

fill(0,255,0); 
stroke(255,0,0); 
strokeWeight(10);
ellipse(10,10,x,y);

x=x+1; 
y=y+1;
}