PImage back;
PImage platImage;
PImage landscape;
PImage sky;
PImage under;
PFont helpFont;
PFont helpFontsml;
boolean aboveSky;
boolean won = false;
float screenX = 1;
float screenY = 1;

void gameScreen() { 
  if (aboveSky) {
    image(sky, 0, 0);
  } else {
    image(under, 0, 0);
  }

  for (float landX = charX * 0.75 -groundLength/2; landX < groundLength/2; landX += width) {
    float landY = 0;
    if (!won) {
      landY = charY * -0.1 - height/2 + 100;
    } else {
      landY = 10000 * -0.1 - height/2 + 100;
    }
    image(landscape, -landX, landY);
  }
  
  if (!won) {
     screenX = -(charX - width/2);
      screenY = -(charY - (height/2 + charSize));
  }
  
  translate(screenX, screenY);
  
  if (charX <-700 && charY<-10100) {
    won=true;
  }
  
  
  if (won) {
    winScreen();
  }

  textureMode(IMAGE);
  textureWrap(REPEAT);
  beginShape();
  texture(back);
  vertex(-wallsPos, -10000, 0, 0);
  vertex(wallsPos, -10000, 2*wallsPos, 0);
  vertex(wallsPos, 0, 2*wallsPos, -10000);
  vertex(-wallsPos, 0, 0, -10000);
  endShape();


  if (keyPressed) {
    if (key == '`' || key == '~') {
      game = false;
      menu = true;
    }
  }
  character();
  if (!won) {
    keyControl();
    if (charX < -wallsPos + 202) {
      charX = -wallsPos + 202;
    } 
    if (charX > wallsPos - 2) {
      charX = wallsPos - charSize - 2;
    }


    if (charY < -height * 1.1) {
      aboveSky = true;
    } else {
      aboveSky = false;
    }
  }
  jumpFall();
  platandhaz();

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
