float x=0; 
float y=10; 
float xDelta=1;

void setup(){

size(400,400); 
frameRate(50);
} 

void draw(){
//background(0); 

fill(255,0,0); 
//ellipse(x,y,10,10);
stroke(0,255,0); 
strokeWeight(4); 
for(int i=0;i<10;i++){
ellipse(x,y,10,10); 
}

x=x+xDelta; 

    if(x>400){
    
    xDelta=-1;
    } 
    if(x<0){
    xDelta=1;
    }

}