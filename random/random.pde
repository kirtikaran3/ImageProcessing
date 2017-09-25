float x[]={100,50,20,80,400,100,80,10,250}; 
float y[]={100,150,70,100,300,400,40,90,250}; 

float xdelta[]={2,1,1,1.5,0.5,2.5,3,1,-2}; 
float ydelta[]={2.5,-1.4,-0.3,2,1,3,1,3,6}; 


void setup(){

size(500,500);
frameRate(50);
background(0);
} 

void draw(){

  
  fill(random(0,255),random(0,255),random(0,255)); 
  //delay(50);
  stroke(random(0,255),random(0,255),random(0,255)); 
  strokeWeight(4); 
  
  for(int i=0;i<9;i++){
  ellipse(x[i],y[i],20,20);
  x[i]=x[i]+xdelta[i];
  y[i]=y[i]+ydelta[i];
  
  
  if((x[i]>width -10) || (x[i]<10)){
  
  xdelta[i]=-xdelta[i];
  } 
  
  if((y[i]>height -10) || (y[i]<10)){
  
  ydelta[i]=-ydelta[i];
  }

}

}