Bug myBug = new Bug();
Bug a = new Bug();

Bug[] numOfBugs = new Bug[20];
// initialize the Array for Bugs, but not the Bugs themselves. 

void setup () {
  size(400, 600);
  noStroke();
  for (int i=0; i<numOfBugs.length; i++) {
    //must initialize the Bugs
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
  
  a.display();
  a.move();
  myBug.display();
  myBug.move();
}