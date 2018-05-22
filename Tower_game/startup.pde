void startUp() {
  PImage tower = loadImage("tower 2.png");

  float towerXpos = 2*width/3;
  float towerYpos = height/4;
  int towerWid = width/6;
  int towerHit = height/2;

  rect(0, 0, width, height);
  tower.resize(towerWid, towerHit);
  fill(0,255,0);
  rect(0,2*height/3,width,height/3);
    if (mouseX>towerXpos && mouseX<towerXpos+ towerWid/3 && mouseY>towerYpos && mouseY<towerYpos+ towerHit) {
    if (mousePressed) {
      fill(0, 255, 0);
      game= true;
      startup=false;
    } else {
      fill(0, 0, 255);
    }
  } else if (mouseX>towerXpos+ towerWid/3 && mouseX<towerXpos+ towerWid && mouseY>towerYpos+towerHit/4 && mouseY<towerYpos+ towerHit) {
    if (mousePressed) {
      fill(0, 255, 0);
      game= true;
      startup=false;
    } else {
      fill(0, 0, 255);
    }
  } else {
    fill(150, 250, 255);
  }



  image(tower, towerXpos, towerYpos);
}
