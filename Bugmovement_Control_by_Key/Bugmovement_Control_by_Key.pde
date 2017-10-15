Bug myBug = new Bug();
void setup() {
  size(600, 600);
}
void draw() {
  background(200);
  myBug.display();
  myBug.move();
}