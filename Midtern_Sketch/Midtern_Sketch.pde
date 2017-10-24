float dotX, dotY;
float speedSinX, speedY,speedX;
int colorR, colorB, colorG;
boolean mouseClicked;

void setup(){
  size(1000,1000);
  background(30);
  dotX= 0;
  dotY= 0;
  speedSinX= 5;
  speedY= 2;
} 

void draw(){
  colorR=int(random(0,255));
  colorB=int(random(0,255));
  colorG=int(random(0,255));
  
  noStroke();
  fill(colorR,colorB,colorG,50);
  rect(dotX, dotY,30,50,2);
  if(!mouseClicked){
  dotX+= speedSinX;
  dotY+= sin(dotX*0.02)*10; 
  }
  if(mouseClicked){
    dotX+= speedX;
    dotY+= speedY;
  }
    
    
  if(dotX>width){
    dotX=0;
    dotY+=100;
    if(dotY>height){
      dotY=0;
    }
  }
 
}
void mousePressed(){
  mouseClicked= !mouseClicked;
  speedX=random(-10,10);
  speedY=random(-10,10);
}