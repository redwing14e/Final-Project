PImage charImage;
PImage man1;
PImage man2;
PImage man3;
int charSize = 100;
int charHeight = 140;


int walkCount = 1;
void character() {

  imageMode(CORNER);

  if(walkCount == 1){
    charImage = man1;
  } else if(walkCount == 3){
    charImage = man2;
  } else if(walkCount == 5){
    charImage = man3;
  } else if(walkCount == 7){
    charImage = man2;
  } else if(walkCount == 9){
    walkCount = 0;
  }
  
  if(jump){
    walkCount = 1;
  }
  
  
  if (!right) {
    pushMatrix();
    scale(-1.0, 1.0);
    image(charImage, -charX - charSize, charY, charSize,  charHeight);
    popMatrix();
  } else {
    image(charImage, charX, charY,  charSize, charHeight);
  }
}

void origin(){
  charX = 0;
  charY = - charSize;
  ySpeed = 0;
  jump = false;
}

void charSettings(){
  man1 = loadImage("man1.png");
  man2 = loadImage("man2.png");
  man3 = loadImage("man3.png"); 

}