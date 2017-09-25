void setup(){

 
size(500,500); 
background(0);

for(int i=0;i<500;i=i+20){

fill(random(0,255),random(0,255),random(0,255)); 
ellipse(i,i,20,20);
}

} 


void draw(){

  fill(random(0,255),random(0,255),random(0,255)); 
ellipse(mouseX,mouseY,20,20);

}