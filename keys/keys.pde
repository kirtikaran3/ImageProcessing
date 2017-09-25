int x,y; 

void setup(){

  size(500,500); 
  x=300; 
  y=300;
background(0);
} 

void draw(){

 fill(random(0,255),random(0,255),random(0,255));
 stroke(random(0,255),random(0,255),random(0,255)); 
 strokeWeight(4);
ellipse(x,y,20,20);

} 

void keyPressed(){

  if(key=='a'){
  x--;
  }
   
   
  if(key=='d'){
  x++;
  }
  
  if(key=='w'){
  y--;
  }
  
  if(key=='s'){
  y++;
  }
  
  
}