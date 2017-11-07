float dotX, dotY;
float speedSinX, speedY, speedX;
int colorR, colorB, colorG;
boolean mouseClicked;
import processing.pdf.*;

void setup() {
  //size(1000, 1000);
  background(30);
  dotX= 0;
  dotY= 0;
  speedSinX= 5;
  speedY= 2;
  size(1000, 1000, PDF, "Mid.pdf");
} 

void draw() {
  colorMode(HSB,200);
  colorR=int(random(0, 255));
  colorB=int(random(0, 255));
  colorG=int(random(0, 255));

  noStroke();
  fill(colorR, colorB, colorG, 70);
  ellipse(dotX, dotY, 50, 50);
  if (!mouseClicked) {
    dotX+= speedSinX;
    dotY+= sin(dotX*0.02)*10;
  }
  if (mouseClicked) {
    dotX+= speedX;
    dotY+= speedY;
  }


  if (dotX>width) {
    dotX=0;
    dotY+=50;
    speedSinX++;
    if (dotY>height) {
      //dotY=0;
      exit();
    }
  }
  if (dotY<-1) {
    dotY=height;
  }
    if (dotX<0) {
    dotX=width;
  }
}
void mousePressed() {
  mouseClicked= !mouseClicked;
  speedX=random(-10, 10);
  speedY=random(-10, 10);
}