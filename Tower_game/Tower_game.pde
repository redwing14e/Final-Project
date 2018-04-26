float charX;
float charY;
float ySpeed = 0;
boolean jump = false;
float groundLength = 10000;
float xSpeed = 10;
float charSize = 10;
float startX;
float finishX;
float startY; 
float finishY;



void setup() {
  size(800, 800);
  charX = groundLength/2;
  charY = -charSize;
}


void draw() {
  background(255);
  translate(-(charX - width/2), -(charY - (height/2 + charSize)));
  fill(200);
  rectMode(CORNER);
  rect(charX, charY, charSize, charSize);
  keyControl();
  platforms();
  
  
  float gravity = 1.1;
  if (jump) {
    charY += ySpeed;
    ySpeed += gravity;
    if(ySpeed > -1 && ySpeed < 1){
      finishY = charY;
      println("y distance of jump: ", abs(finishY - startY));
    }
  }
}