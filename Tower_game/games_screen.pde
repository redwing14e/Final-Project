PImage back;
PImage platImage;
PImage landscape;
PImage sky;
PImage under;
PFont helpFont;
PFont helpFontsml;
boolean aboveSky;
boolean won = false;


void gameScreen() { 

  if (aboveSky) {
    image(sky, 0, 0);
  } else {
    image(under, 0, 0);
  }

  for (float landX = charX * 0.75 -groundLength/2; landX < groundLength/2; landX += width) {
    float landY = charY * -0.1 - height/2 + 100;
    image(landscape, -landX, landY);
  }

  if (!won) {
    translate(-(charX - width/2), -(charY - (height/2 + charSize)));
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
    if (key == '`') {
      game = false;
      menu = true;
    }
  }
  character();
  if (!won) {
    keyControl();
   if(charX < -wallsPos + 202){
     charX = -wallsPos + 202;
   } 
   if(charX > wallsPos - 2){
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
   
}