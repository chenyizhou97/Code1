class Flowers {
  float xPosition, yPosition;
  float petalSize;
  float bloomSpeed;
  float fallSpeed;

  Flowers() {
    xPosition=0;
    yPosition=0;
    petalSize=0;
    bloomSpeed=0.01;
    fallSpeed=7;
  }

  void display(float f) {
    strokeWeight(0.2);
    // set centre point
    translate(0, -f);
    // centre circle
    fill(#c6ff89);
    for (int i = 0; i < 4; i++) {
      ellipse(xPosition, yPosition-3, petalSize, petalSize);
      rotate(radians(90));
    }
    fill(#fff9bb);
    ellipse(xPosition, yPosition, 4, 4);
    // draw 5 petals, rotating after each one
  }
  
  void bloom() {
    if (petalSize<5) {
      petalSize+= bloomSpeed;
    } else {
      petalSize = 5;
    }
  }
  
    void fall(){
    xPosition-=fallSpeed;
    yPosition+=fallSpeed;
  }
  
  void reset(){
    petalSize=0;
    xPosition=0;
    yPosition=0;
  }
}