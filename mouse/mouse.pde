void setup(){
size(500,500);
background(0); 
frameRate(50);
} 

void draw(){


} 
void mousePressed(){
fill(random(0,255),random(0,255),random(0,255));
ellipse(mouseX,mouseY,20,20);
println("Pressed");

} 
void mouseClicked(){
fill(random(0,255),random(0,255),random(0,255));
ellipse(mouseX,mouseY,20,20);
println("cliked");

} 
void mouseDragged(){
fill(random(0,255),random(0,255),random(0,255));
ellipse(mouseX,mouseY,20,20);
println("dragged");

} 