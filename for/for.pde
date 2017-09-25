float x=100; 
float y=50; 

void setup(){
size(500,500); 
background(0); 
ellipse(x,y,20,20); 
for(int i=0;i<=100;i=i+20){

ellipse(i,i,50,50);
}

}