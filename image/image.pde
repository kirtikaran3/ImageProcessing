PImage img; 

int x=250; 
int y=250; 

float rot=0; 

void setup(){
size(1000,1000); 
img=loadImage("img.png");

} 

void draw(){

  background(0); 
  pushMatrix(); 
  translate(x+img.width/3,y+img.height/3);  
  rotate(rot); 
  translate(-img.width/3,-img.height/3);
  image(img,0,0); 
  popMatrix(); 
  rot=rot+0.05;

}