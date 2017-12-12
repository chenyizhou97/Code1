float Angel1, Angel2;
float branchLength;
float branchThinckness = 2.5;

float penX, penY, anchorX, anchorY;
float weightDiameter = 30;
float Speed = 0.05;
float swingAmount ;

Leaves Leaf = new Leaves();
Flowers drawFlower = new Flowers();

int Page;


void setup() {
  size(800, 700);
  branchLength = 200;
  anchorX = 600;
  anchorY = 500;
  Page =1;
}

void draw() {
  penX =(sin(swingAmount)-cos(swingAmount))*70 + anchorX;
  penY = cos(swingAmount)*100 + anchorY;
  swingAmount += Speed;
  //Define the flowing amount

  background(255);
  frameRate(60);
  stroke(0);
  strokeWeight(5);
  float a = (penX / (float) width) * 60;
  float b = (penY / (float)height) * 60;
  Angel1 = radians(a);
  Angel2= radians(b);
  // Start the tree from the bottom of the screen
  translate(width/2, height);
  // Draw a line 120 pixels
  line(0, 0, 0, -branchLength);
  // Move to the end of that line
  translate(0, -branchLength);
  // Start the recursive branching!
  branch(branchLength); 
  if (Page==1) {
    Leaf.grow();
  }
  if (Page==2) {
    drawFlower.bloom();
  }
  if (Page ==3) {
    drawFlower.fall();
  }
  if (Page ==4) {
    Leaf.colorChange();
  }
  if (Page ==5) {
    Leaf.fall();
  }
  if (Page ==6) {
    Leaf.reset();
    drawFlower.reset();
  }
}


void branch(float h) {
  h *= 0.66;


  if (h > 4) {
    stroke(0);
    pushMatrix();
    strokeWeight(branchThinckness);
    rotate(Angel1);   
    line(0, 0, 0, -h);  
    translate(0, -h); 
    branch(h); 
    popMatrix(); 


    stroke(0);
    pushMatrix();
    strokeWeight(branchThinckness);
    rotate(-Angel2);
    line(0, 0, 0, -h);
    translate(0, -h);
    branch(h);
    popMatrix();
  }

  if (h<4) {
    if (Page==1) {
      Leaf.display(h);
    }
    if (Page==2) {
      Leaf.displayf(h);
      drawFlower.display(h);
    }
    if (Page ==3) {
      Leaf.displayf(h);
      drawFlower.display(h);
    }
    if (Page==4) {
      Leaf.displayf(h);
    }
    if (Page==5) {
      Leaf.displayf(h);
    }
  }
}

void mousePressed() {
  Page++;
  if (Page >6) {
    Page=1;
  }
}