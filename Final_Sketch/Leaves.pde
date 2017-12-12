class Leaves {

  float xPosition, yPosition;
  float ySpeed;
  float leafWidth, leafWidthmax;
  float leafLenght, leafLengthmax;
  float growSpeed=0.02;
  float R;


  Leaves() {
    xPosition = 0;
    yPosition = 0;
    leafWidth = 0;
    leafLenght = 4;
    ySpeed = 10;
    R= 44;
  }

  void display(float y) {
    strokeWeight(1);
    fill(R, 255, 109);
    ellipse(xPosition, yPosition, leafWidth, leafLenght);
    translate(0, -y);
  }
  void grow() {
    if (leafLenght<12&&leafWidth<8) {
      leafLenght+= growSpeed;
      leafWidth+= growSpeed;
    } else {
      leafLenght=12;
      leafWidth=8;
    }
  }
  void displayf(float g) {
    strokeWeight(1);
    fill(R, 255, 109);
    ellipse(xPosition, yPosition, 8, 12);
    translate(0, -g);
  }

  void colorChange() {
    R++;
    if (R>255) {
      R=255;
    }
  }
    void fall(){
    xPosition-=ySpeed;
    yPosition+=ySpeed;
  }
      
  

    void reset() {
      leafWidth=0;
      leafLenght=4;
      xPosition=0;
      yPosition=0;
      R=44;
    }
  }