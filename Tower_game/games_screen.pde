//creates variables fopr images for things involved in the gamescreen
PImage back;
PImage platImage;
PImage landscape;
PImage sky;
PImage under;
//gets font variables ready
PFont helpFont;
PFont helpFontsml;

//creates a boolean for the character being above the background image or not
boolean aboveSky;

//creates a boolean  for wheter or not ythe player has won
boolean won = false;

//creates and initializes the screen position 
float screenX = 1;
float screenY = 1;

//creates function for the gamescreen
void gameScreen() { 

  //displays rather a ground image behind main background or sky image 
  if (aboveSky) {
    image(sky, 0, 0);
  } else {
    image(under, 0, 0);
  }

  //draws the image repeadtly to fill background
  for (float landX = charX * 0.75 -groundLength/2; landX < groundLength/2; landX += width) {
    float landY = 0;
    if (!won) {
      //the land postion changes with player unles the player has won
      landY = charY * -0.1 - height/2 + 100;
    } else {
      landY = 10000 * -0.1 - height/2 + 100;
    }
    image(landscape, -landX, landY);
  }
  //updates where the screen is postioned unless the player has won
  if (!won) {
    screenX = -(charX - width/2);
    screenY = -(charY - (height/2 + charSize));
  }
  //translates the screen
  translate(screenX, screenY);
  
  //makes win true when the player reaches a particular area
  if (charX <-700 && charY<-10100) {
    won=true;
  }

  //if the character has won play the win screen
  if (won) {
    winScreen();
  }
  
  //displays the interior image repetedtly
  textureMode(IMAGE);
  textureWrap(REPEAT);
  beginShape();
  texture(back);
  vertex(-wallsPos, -10000, 0, 0);
  vertex(wallsPos, -10000, 2*wallsPos, 0);
  vertex(wallsPos, 0, 2*wallsPos, -10000);
  vertex(-wallsPos, 0, 0, -10000);
  endShape();
  
  //key for displaying the menu
  if (keyPressed) {
    if (key == '`' || key == '~') {
      game = false;
      menu = true;
    }
  }
  //runs the character 
  character();
  //if not won run the key control and keeps player ionside walls just in case something goes wrong
  if (!won) {
    keyControl();
    if (charX < -wallsPos + 202) {
      charX = -wallsPos + 202;
    } 
    if (charX > wallsPos - 2) {
      charX = wallsPos - charSize - 2;
    }

    // changes the abovesky variable depending on the character's height
    if (charY < -height * 1.1) {
      aboveSky = true;
    } else {
      aboveSky = false;
    }
  }
  //runs the falling
  jumpFall();
  //runs all the platforms and hazards
  platandhaz();
  
  
  //runs instructrions for the player during the game
  fill(255, 135, 0);
  textFont(startFont);
  textAlign(BOTTOM, LEFT);
  text("GET TO THE TOP to ESCAPE!", - wallsPos, 150);
  textFont(helpFont);
  text("Press ~ for the menu", - wallsPos, 220);
  rectMode(CORNER);
  fill(255, 135, 0);
  rect(1415, -1500, 325, 100, 15);
  fill(0);
  textFont(helpFontsml);
  textAlign(CENTER, CENTER);
  text("Some Platforms move \n try the right n' left arrow keys", 1575, -1450);
  fill(255, 135, 0);
  rect(-1475, -6880, 350, 80, 15);
  fill(0);
  text("Remember right and left keys!", -1300, -6850);
}

//loads everyuthing that the game screen uses
void gameSettings() {
  back = loadImage("back.png");
  back.resize( 1200, 900);

  sky = loadImage("sky.png");
  sky.resize(width, height);

  under = loadImage("underground.png");
  under.resize(width, height);

  landscape =loadImage("landscape.png");
  landscape.resize(width, floor(height * 1.3));

  helpFont = createFont("helpFont.vlw", 52);
  helpFontsml = createFont("helpFont.vlw", 24);

  //runs through array and creates new drop for everywhere in array
  for ( int i = 0; i < drops.length; i++) {
    drops[i] = new Drop();
  }
}