boolean drawACat = false;
int buttonX = 370;
int buttonY = 370;
int buttonsize = 30;
int catTailY = 200;
int swingAmounts =3;
void setup() {
  size(400, 400);
}
void draw() {
  background(251, 218, 160);
  catTailY=catTailY+swingAmounts;
  if (catTailY<=50||catTailY>=350) {

    swingAmounts=-swingAmounts;
  }
  noStroke();
  fill(19, 219, 249);
  if (mouseX-buttonX<15) {
    if (mouseX-buttonX>-15) {
      if (mouseY-buttonY>-15) {
        if (mouseY-buttonY<15) {
          fill( 11, 106, 120);
        }
      }
    }
  }
  ellipse(buttonX, buttonY, buttonsize, buttonsize);
  if (drawACat == true) {
    stroke(0);
    strokeWeight(20);
    line(30, catTailY, 80, 220);
    strokeWeight(2);
    fill(153, 153, 153);
    ellipse(80, 300, 20, 100);
    ellipse(120, 300, 20, 100);
    ellipse(280, 300, 20, 100);
    ellipse(240, 300, 20, 100); 
    rect(60, 150, 200, 150, 10);
    fill(0);
    triangle(80, 150, 90, 230, 100, 150);
    triangle(120, 150, 130, 230, 140, 150);
    triangle(160, 150, 170, 230, 180, 150);
    triangle(200, 150, 210, 230, 220, 150);
    fill(153, 153, 153);
    triangle(210, 130, 210, 220, 260, 180);
    triangle(350, 130, 350, 220, 300, 180);
    ellipse(280, 230, 160, 120);
    fill(0);
    ellipse(250, 220, 30, 30);
    ellipse(320, 220, 30, 30);
    curve(260, 85, 250, 270, 300, 270, 290, 240);
    fill(255, 255, 255);
    ellipse(245, 215, 13, 13);
    ellipse(315, 215, 13, 13);
    fill(0);
    ellipse(290, 230, 15, 15);
    stroke(0);
  }
}

void mouseClicked() {
  if (mouseX-buttonX<=15) {
    if (mouseX-buttonX>=-15) {
      if (mouseY-buttonY>=-15) {
        if (mouseY-buttonY<=15) {
          println("Meow!");
          if (drawACat == true) {
            drawACat = false;
          } else if (drawACat == false) {
            drawACat = true;
          }
        }
      }
    }
  }
}