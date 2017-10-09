Bug myBug = new Bug();

Bug[] numOfBugs = new Bug[10];

void setup () {
  size(600, 600);
  noStroke();
  for (int i=0; i<numOfBugs.length; i++) {
    numOfBugs[i] = new Bug();
  }
  smooth();
}
void draw() {
  background(100);
  
  for (int i=0; i<numOfBugs.length; i++) {
    numOfBugs[i].display();
    numOfBugs[i].move();
  }
  
  myBug.display();
  myBug.move();
}