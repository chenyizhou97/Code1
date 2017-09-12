boolean drawACat = false;
void setup() {
  size(400, 400);
  background(251, 218, 160);
  rect(370, 370, 20, 20);
  }
void draw() {
  if (drawACat == true){
    stroke(0);
    strokeWeight(20);
    line(30, 300, 80, 220);
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
void mouseClicked(){
  println("Meow!");
  if(drawACat == false){
  drawACat = true;
 }
}