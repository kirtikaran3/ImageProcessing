int x=0; 

void setup(){

size(500,500); 
frameRate(50);
background(0);
} 

void draw(){

  
  ellipse(x,250,3,3);
  fill(255,0,0); 
 stroke(0,0,255); 
 strokeWeight(1); 
 if(x==499){
 
 x=0; 
 background(0);
 }
 
 
   x=x+1;
 
 
 
 }