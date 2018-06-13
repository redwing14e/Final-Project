PImage charImage;
PImage man1;
PImage man2;
PImage man3;
float groundLength = 10000;
float wallsPos = 1200;
int charSize = 75;
int charHeight = 125;
float charX = -wallsPos + 220;
float charY =  -charHeight;
float ySpeed = 0;
float xSpeed = 20;


int walkCount = 1;
void character() {

  imageMode(CORNER);

  if (walkCount == 1) {
    charImage = man1;
  } else if (walkCount == 4) {
    charImage = man2;
  } else if (walkCount ==7) {
    charImage = man3;
  } else if (walkCount == 10) {
    charImage = man2;
  } else if (walkCount == 13) {
    walkCount = 0;
  }

  if (jump) {
    walkCount = 1;

  }

  charImage.resize(charSize, charHeight);
  if (!right) {
    pushMatrix();
    scale(-1.0, 1.0);
    image(charImage, -charX -charSize, charY);
    popMatrix();
  } else {
    image(charImage, charX, charY);
  }
}

void origin() {
  charX = -500;
  charY = -3400 - charHeight;
  //charX = -wallsPos + 220;
  //charY = -charHeight;
  ySpeed = 0;
  jump = false;
  movePlat = 800;
}

void charSettings() {
  man1 = loadImage("man1.png");
  man2 = loadImage("man2.png");
  man3 = loadImage("man3.png");
}