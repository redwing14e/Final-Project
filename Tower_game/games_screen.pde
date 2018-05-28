PImage back;
PImage platImage;
PImage hazardImageV;
PImage hazardImageH;
PImage landscape;
PImage sky;
PImage under;
PImage charImage;
PImage man1;
PImage man2;
PImage man3;


float groundLength = 10000;
float ySpeed = 0;
float xSpeed = 20;
boolean jump = false;
int charSize = 100;
float startX;
float finishX;
float startY; 
float finishY;
float charX = 0;
float charY =  -charSize;
float wallsPos = 1200;
boolean aboveSky;


void gameScreen() { 

  if (aboveSky) {
    image(sky, 0, 0);
  } else {
    image(under, 0, 0);
  }

  for (float landX = charX * 0.75 -groundLength/2; landX < groundLength/2; landX += width) {
    float landY = charY * -0.1 - height/2 + 100;
    image(landscape, -landX, landY);
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


  character();
  
  if (keyPressed){
    if (key == '`'){
      game = false;
      menu = true;
    }
  }
  
  if(charY < -450){
    aboveSky = true;
  } else {
    aboveSky = false;
  }
  keyControl();
  jumpFall();
  platforms();
  hazards();
}
