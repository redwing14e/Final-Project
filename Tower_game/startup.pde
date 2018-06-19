//variables for the two fonts used in startup screen
PFont startFont;
PFont signFont;

//creates an array of strings of cloud names 
String[] cloudNames = { "cloud1.png", "cloud2.png", "cloud3.png", "cloud4.png"};
//makes an array of cloaud images the same lengtha as the clouad names array
PImage[] clouds = new PImage[cloudNames.length];
//makes an array of cloud objects 
Cloud[] myClouds = new Cloud[200];

//sets image variables for images used in startup
PImage signImage;
PImage grass;

void startUp() {
  //loads tower image
  PImage tower = loadImage("tower 2.png");

  //sets size and position of tower
  float towerXpos = 2*width/3;
  float towerYpos = height/4;
  int towerWid = width/6;
  int towerHit = height/2;

  //sets a variable for the tint color
  color tintC = color(255);

  //resizes the tower image
  tower.resize(towerWid, towerHit);

  //creates two button to replicate shape of tower
  if (mouseX>towerXpos && mouseX<towerXpos+ towerWid/3 && mouseY>towerYpos && mouseY<towerYpos+ towerHit) {
    //if the mouse is pressed change the tint to green and then makes the game start and the start screen stop
    if (mousePressed) {
      tintC = color(255, 0, 0);
      game= true;
      startup=false;
    } else {
      //if the mouse is over the button than it only changes the tint color
      tintC = color(0, 0, 255);
    }
  } else if (mouseX>towerXpos+ towerWid/3 && mouseX<towerXpos+ towerWid && mouseY>towerYpos+towerHit/4 && mouseY<towerYpos+ towerHit) {
    if (mousePressed) {
      tintC = color(255, 0, 0);
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

  //moves and displays the clouds
  for (int i = 0; i < myClouds.length; i++) {
    myClouds[i].move();
    myClouds[i].display();
  }

  //grassy textured ground
  textureMode(IMAGE);
  textureWrap(REPEAT);
  beginShape();
  texture(grass);
  vertex(0, 2*height/3, 0, 0);
  vertex(width, 2*height/3, width, 0);
  vertex(width, height, width, 2* height/3);
  vertex(0, height, 0, 2*height/3);
  endShape();

  //displays thesign and what is said on it
  image(signImage, 250, 200);
  fill(0);
  textFont(startFont);
  textAlign(LEFT, CENTER);
  text("Tower \nClimber", width/6 - 20, height/3 + 20);

  //displays our names 
  textAlign(LEFT, BOTTOM);
  textFont(signFont);
  fill(0);
  text("Created By: Eric Buell and Jasper Caswell", 10, height-10);

  //displays the tower image with the sleected tint
  tint(tintC);
  image(tower, towerXpos, towerYpos);
  noTint();
}

//makes an object of clouds
class Cloud {
  //declares all the variabls for the clouds
  float x;
  float y;
  int size;
  float speed;
  float a;
  PImage image;

  //intiliazes all the cloud variables
  Cloud(PImage tempImage) {
    x = random(width);
    y = random(-20, height/5);
    speed = random(1, 5);
    size = floor(speed * 40);
    image = tempImage;
  }

  //moves the cloud and resets when it has got to far
  void move() {
    x -= speed;
    if (x < 0 - size) {
      x = width + size;
    }
  }  

  //displays teh cloud
  void display() {
    imageMode(CORNER);
    image(image, x, y, size, size);
  }
}
//loads all fonts for the start up screen
void startupSettings() {
  startFont = createFont("startfont.TTF", 100);
  signFont = createFont("signature.otf", 52);
  signImage = loadImage("sign1.png");
  signImage.resize(700, 600);
  grass = loadImage("grass.jpg");
  grass.resize(width/2, 2*height/3);

   //loads in all the image namesm from the array of strings into the array of images
  for (int i=0; i < cloudNames.length; i++) {
    String imageName = cloudNames[i];
    clouds[i] = loadImage(imageName);
  }
  //loads in all the images into the array of clouds
  for (int i = 0; i < myClouds.length; i ++) {
    int randomImage = floor(random(0, 4));
    myClouds[i] = new Cloud(clouds[randomImage]);
  }
}