PFont startFont;
String[] cloudNames = { "cloud1.png", "cloud2.png", "cloud3.png", "cloud4.png"};
PImage[] clouds = new PImage[cloudNames.length];
Cloud[] myClouds = new Cloud[40];


void startUp() {

  PImage tower = loadImage("tower 2.png");

  float towerXpos = 2*width/3;
  float towerYpos = height/4;
  int towerWid = width/6;
  int towerHit = height/2;



  tower.resize(towerWid, towerHit);

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
  //background rectangle
  rect(0, 0, width, height);
  
  //lower grass rectangle
  fill(0, 255, 0);
  rect(0, 2*height/3, width, height/3);

  //moves and displays the clouds
  for (int i = 0; i < myClouds.length; i++) {
    myClouds[i].move();
    myClouds[i].display();
  }
  fill(0);
  textFont(startFont);
  text("Tower \n Climber", width/6, height/3);

  image(tower, towerXpos, towerYpos);
}

class Cloud {
  float x;
  float y;
  int size;
  float speed;
  float a;
  PImage image;

  Cloud(PImage tempImage) {
    x = random(width);
    y = random(height/4);
    speed = random(1, 5);
    size = floor(speed * 40);
    image = tempImage;
  }

  void move() {
    x -= speed;
    if (x < 0 - size) {
      x = width + size;
    }
  }

  void display() {
    imageMode(CORNER);
    image(image, x, y, size, size);
  }
}