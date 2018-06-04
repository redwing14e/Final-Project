int walkCount = 1;
void character() {

  imageMode(CORNER);

  if(walkCount == 1){
    charImage = man1;
  } else if(walkCount == 3){
    charImage = man2;
  } else if(walkCount == 6){
    charImage = man3;
  } else if(walkCount == 9){
    walkCount = 0;
  }
  
  
  if (!right) {
    pushMatrix();
    scale(-1.0, 1.0);
    image(charImage, -charX - charSize, charY, charSize,  charSize);
    popMatrix();
  } else {
    image(charImage, charX, charY,  charSize, charSize);
  }

}