float[] elX = new float[50]; 
float[] elY = new float[50]; 
float radius = 20;
float rectX = 250;
float rectY =  210;

float[] elXSpeed = new float [50];
float[] elYSpeed = new float [50];
boolean value = false;

void setup() {
  size(500, 400);
  for (int i = 0; i<50; i++) {
    elX[i] = random(20, 480);
    elY[i] = random(20, 380);
    elXSpeed[i] = random(1,6);
    elYSpeed[i] = random(1,6);
  }
}
void draw() {
  noStroke();
  background(136, 255, 145);
  if (value == true) {
    textSize(30);
    text("Doom!!", 40, 50);
  }
  if (value==false) {
    background(136, 255, 145);
  }
    for (int i = 0; i<50; i++) {
    
    fill(200, 100, 150);
    ellipse(elX[i], elY[i], radius, radius);

    if (value == false) {
      fill( 50, 100, 234);
      rectMode(RADIUS);
      rect( rectX, rectY, 60, 30);
    } else {
      fill( 50, 100, 234);
      rectMode(RADIUS);
      rect( rectX, rectY, 60, 30);
    }

    if (mouseX >rectX-60 && mouseX < rectX+60 && mouseY > rectY-30 && mouseY < rectY+30) {
      fill( 100, 200, 234);
      rectMode(RADIUS);
      rect( rectX, rectY, 60, 30);
    }



    elX[i] += elXSpeed[i];
    elY[i] += elYSpeed[i];

    //Bounce off the button
    if (elY[i]+radius/2 > rectY-30 && elX[i] > rectX-60 && elX[i] < rectX+60) {
      elYSpeed[i] *= -1;
      if (value == false) {
        value = true;
      } else if (value == true) {
        value = false;
      }
    }//top
    if (elY[i]-radius/2 > rectY+30 && elX[i] > rectX-60 && elX[i] < rectX+60) {
      elYSpeed[i] *= -1;
      if (value == false) {
        value = true;
      } else if (value == true) {
        value = false;
      }
    }
    if (elX[i]+radius/2 < rectX-60 && elY[i] > rectY-30 && elY[i] < rectY+30) {
      elXSpeed[i]*= -1;
      if (value == false) {
        value = true;
      } else if (value == true) {
        value = false;
      }
    }
    if (elX[i]-radius/2 < rectX+60 && elY[i] > rectY-30 && elY[i] < rectY+30) {
      elXSpeed[i] *= -1;
      if (value == false) {
        value = true;
      } else if (value == true) {
        value = false;
      }
    }

    //Bounce off the edges
    if (elY[i]>height) {
      elYSpeed[i] *= -1;
    }
    if (elX[i]>width) {
      elXSpeed[i] = elXSpeed[i] * -1;
    }
    if (elY[i]<0) {
      elYSpeed[i] = elYSpeed[i] * -1;
    }
    if (elX[i]<0) {
      elXSpeed[i] = elXSpeed[i] * -1;
    }
  }
}

void mousePressed() {
  if (value==false && mouseX >rectX-60 && mouseX < rectX+60 && mouseY > rectY-30 && mouseY < rectY+30) {
    value = true;
  } else if (value == true && mouseX >rectX-60 && mouseX < rectX+60 && mouseY > rectY-30 && mouseY < rectY+30) {
    value = false;
  }
}