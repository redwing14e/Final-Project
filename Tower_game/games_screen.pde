PImage back;
PImage platImage;
PImage barbs;
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


void gameScreen() { 


  for (float landX = charX -groundLength/2; landX < groundLength/2; landX += width/2) {
    for (float landY = 0; landY < height; landY += height/2) {
      image(back, -landX, landY, width/2, height/2);
    }
  }

  translate(-(charX - width/2), -(charY - (height/2 + charSize)));


  fill(200);
  stroke(0);
  rectMode(CORNER);
  rect(charX, charY, charSize, charSize);
  keyControl();
  jumpFall();
  platforms();
  hazards();
}