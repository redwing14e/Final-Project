PFont startFont;
PFont signFont;

String[] cloudNames = { "cloud1.png", "cloud2.png", "cloud3.png", "cloud4.png"};
PImage[] clouds = new PImage[cloudNames.length];
Cloud[] myClouds = new Cloud[200];

PImage signImage;





void startUp() {
 

  PImage tower = loadImage("tower 2.png");

  float towerXpos = 2*width/3;
  float towerYpos = height/4;
  int towerWid = width/6;
  int towerHit = height/2;
  
  color tintC = color(255);



  tower.resize(towerWid, towerHit);

  if (mouseX>towerXpos && mouseX<towerXpos+ towerWid/3 && mouseY>towerYpos && mouseY<towerYpos+ towerHit) {
    if (mousePressed) {
      tintC = color(0, 255, 0);
      game= true;
      startup=false;
      
    } else {
      tintC = color(0, 0, 255);
    }
  } else if (mouseX>towerXpos+ towerWid/3 && mouseX<towerXpos+ towerWid && mouseY>towerYpos+towerHit/4 && mouseY<towerYpos+ towerHit) {
    if (mousePressed) {
      tintC = color(0, 255, 0);
      game= true;
      startup=false;
    } else {
      tintC = color(0, 0, 255);
     
    }
  } else {
    tintC = color(255);
  }
  //background rectangle
  fill(150, 250, 255);
  rect(0, 0, width, height);

  //lower grass rectangle
  fill(0, 255, 0);
  rect(0, 2*height/3, width, height/3);

  //moves and displays the clouds
  for (int i = 0; i < myClouds.length; i++) {
    myClouds[i].move();
    myClouds[i].display();
  }
  

  image(signImage, 250 , 200);
  fill(0);
  textFont(startFont);
  textAlign(LEFT, CENTER);
  text("Tower \nClimber", width/6 - 20, height/3 + 20);
  
  textAlign(LEFT, BOTTOM);
  textFont(signFont);
  fill(0);
  text("Created By: Eric Buell and Jasper Caswell", 10, height-10);

  tint(tintC);
  image(tower, towerXpos, towerYpos);
  noTint();
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
    y = random(-20, height/5);
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
void startupSettings(){
  startFont = createFont("startfont.TTF", 100);
  signFont = createFont("signature.otf", 52);
  signImage = loadImage("sign1.png");
  signImage.resize(700, 600);
    

  for (int i=0; i < cloudNames.length; i++) {
    String imageName = cloudNames[i];
    clouds[i] = loadImage(imageName);
  }
  for (int i = 0; i < myClouds.length; i ++) {
    int randomImage = floor(random(0, 4));
    myClouds[i] = new Cloud(clouds[randomImage]);
  }

}