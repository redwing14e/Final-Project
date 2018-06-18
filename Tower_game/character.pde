//creates some variables for the images of the character
PImage charImage;
PImage man1;
PImage man2;
PImage man3;

//picks variables for the size of the ground and position of the walls
float groundLength = 10000;
float wallsPos = 1200;

//values for aspects of the character such as size speed and start position
int charSize = 75;
int charHeight = 125;
float charX = -wallsPos + 220;
float charY =  -charHeight;
float ySpeed = 0;
float xSpeed = 20;

//variable for counting and running through the character animation
int walkCount = 1;


void character() {
  //sets image mode to corner for ease 
  imageMode(CORNER);

  //runs through character animation based on walkcount
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

  //the character is jumping or falling it picks the falling image
  if (jump) {
    walkCount = 1;
  }

  //resizes and displays image of character while also reversing the image when it is going left
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

//function for returning character to the the start
void origin() {
  charX = -wallsPos + 220;
  charY = -charHeight;
  ySpeed = 0;
  jump = false;
  movePlat = 800;
}

//loads all images necessary foir running the character
void charSettings() {
  man1 = loadImage("man1.png");
  man2 = loadImage("man2.png");
  man3 = loadImage("man3.png");
}