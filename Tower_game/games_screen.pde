PImage back;
PImage platImage;
PImage hazardImageV;
PImage hazardImageH;
PImage landscape;
float groundLength = 10000;
float ySpeed = 0;
boolean jump = false;
float xSpeed = 10;
float charSize = 10;
float startX;
float finishX;
float startY; 
float finishY;
float charX = 0;
float charY =  -charSize;
float wallsPos = 1200;


void gameScreen() { 
  for (float landX = charX * 0.75 -groundLength/2; landX < groundLength/2; landX += width) {
    image(landscape, -landX, 0);
  }
  translate(-(charX - width/2), -(charY - (height/2 + charSize)));
  

  textureMode(IMAGE);
  textureWrap(REPEAT);
  beginShape();
  texture(back);
  vertex(-wallsPos, -10000, 0, 0);
  vertex(wallsPos, -10000, 2*wallsPos, 0);
  vertex(wallsPos, 0, 2*wallsPos, -10000);
  vertex(-wallsPos, 0, 0, -10000);
  endShape();



  fill(200);
  stroke(0);
  rectMode(CORNER);
  rect(charX, charY, charSize, charSize);
  keyControl();
  jumpFall();
  platforms();
  hazards();
}