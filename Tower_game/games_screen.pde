
float groundLength = 10000;
float ySpeed = 0;
boolean jump = false;
float xSpeed = 10;
float charSize = 10;
float startX;
float finishX;
float startY; 
float finishY;
float charX = groundLength/2;
float charY =  -charSize;


void gameScreen(){ 
  background(255);
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
