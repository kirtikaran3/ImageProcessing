float x=0; 
float y=0;
//float a=0; 
//float b=50; 
float change=1;
void setup(){


size(500,500);
} 

void draw(){ 
background(0);
  //rect(250,250,40,40); 
  //line(500,10,100,0); 
  
  fill(255,0,0);     ///r,g,b   255
  ellipse(x,y,20,20); 
  //stroke(0,255,0); 
  //strokeWeight(2); 
  
  //fill(0,255,0);     ///r,g,b   255
  //ellipse(a,b,20,20); 
  //stroke(0,255,0); 
  //strokeWeight(2);
  
  
  //x,y,xsize,ysize
  x=x+change; 
  y=y+change; 
  //a=a+1; 
  //b=b+1;
  //delay(100); 
      
        if(x>500){
        
          change=-1;
        } 
        if(x<0){
        
        change =1;
        }
  

} 