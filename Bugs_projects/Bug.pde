class Bug { 
  float xPos;
  float yPos;
  float ySpeed;
  float bugSize = 20;
  color displayColor;

  Bug() {
    xPos = random(width);
    yPos = random(height);
    ySpeed = random(2, 6);
    if (random(0, 2)>1) {
      displayColor = color(81, 51, 0);
    } else {
      displayColor = color(21);
    }
  }
  void display () {
            //draw legs
    stroke(0);
    strokeWeight(2);
    line(xPos, yPos-20,xPos-20, yPos-30);
    line(xPos, yPos, xPos-30, yPos);
    line(xPos, yPos+20, xPos-20, yPos+30);
    line(xPos, yPos-20, xPos+20, yPos-30);
    line(xPos, yPos, xPos+30, yPos);
    line(xPos, yPos+20, xPos+20, yPos+30);
    //draw a bugs
    noStroke();
    fill(displayColor);
    ellipse(xPos, yPos, bugSize, bugSize+50);
    stroke(0);
    curve(xPos-10, yPos, xPos-10, yPos+40, xPos-20, yPos+70, xPos, yPos+70);
    curve(xPos+10, yPos, xPos+10, yPos+40, xPos+20, yPos+70, xPos, yPos+70);

  }
  void move(){
    yPos += ySpeed;
    if(yPos>height){
      //reset top
      yPos =0;
      xPos= random(width);
      ySpeed = random (2,6);
    }
  }
}