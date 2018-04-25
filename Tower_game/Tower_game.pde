//////Eric is a scrub
float charX;
float charY;

float gravity = 1.3;
float ySpeed = 0;
boolean jump = false;
float groundX = 0;
float groundY;
float groundWidth;
float groundHeight;
float xSpeed = 10;
float charSize = 10;




void setup() {
  size(800, 800);
  groundY = height/2 + charSize;
  groundWidth = width;
  groundHeight = height;
  charX = width/ 2;
  charY = groundY - charSize;
}


void draw() {
  background(255);
  translate(-(charX - width/2), -(charY - (height/2 + charSize)));
  fill(200);
  rectMode(CORNER);
  rect(charX, charY, charSize, charSize);
  platforms();
  keyControl();

  if (jump) {
    // println("in jump");
    charY += ySpeed;
    ySpeed += gravity;
  }
}