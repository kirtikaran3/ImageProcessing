float x=250; 
//float xDelta=1;

float y=75; 
//float yDelta=2; 
float xDelta[]={2,1,1,1.5,0.5,2.5,3,1,-2}; 
float yDelta[]={2.5,-1.4,-0.3,2,1,3,1,3,6}; 
void setup(){

size(500,500); 
frameRate(50); 
background(0);

} 

void draw(){


  //background(0); 
  fill(random(0,255),random(0,255),random(0,255));  
  stroke(random(0,255),random(0,255),random(0,255)); 
  strokeWeight(5);
  ellipse(x,y,20,20); 
for(int i=0;i<9;i=i+1){
      x=x+xDelta[i]; 
      y=y+yDelta[i];

          if((x> width - 10 ) || ( x < 10 )){

                  xDelta[i]=-xDelta[i];

          } 

                  if((y>height -10)|| (y<10)){

                      yDelta[i]=-yDelta[i];
            
                }


} 
}