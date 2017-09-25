int x=0;
int y=100;
void setup(){

  size(500,500);
  background(0);
} 

void draw(){

  fill(255,0,0); 
  stroke(0,255,0); 
  strokeWeight(2);
  ellipse(x,y,10,10); 
  x++; 
  if(x==500){
      x=0; 
      y=y+12;
  }

}