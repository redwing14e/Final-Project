
boolean game = false;
boolean menu = false;
boolean startup = true;
boolean death = false;
boolean win = false;

void setup() {
  frameRate(30);
  back = loadImage("back.png");
  back.resize( 1200, 900);

  sky = loadImage("sky.png");
  sky.resize(width, height);

  under = loadImage("underground.png");
  under.resize(width, height);

  landscape =loadImage("landscape.png");
  landscape.resize(width, floor(height * 1.3));

  platImage = loadImage("bricks.png");
  platImage.resize(200, 200);

  hazardImageV = loadImage("spikesV.png");
  hazardImageV.resize(50, 50);
  hazardImageH = loadImage("spikesH.png");
  hazardImageH.resize(50, 50);

  deathFont = createFont("Medusa Gothic.otf", 40);
  startFont = createFont("font.TTF", 100);
  
  for (int i=0; i < cloudNames.length; i++) {
    String imageName = cloudNames[i];
    clouds[i] = loadImage(imageName);
  }
  for (int i = 0; i < myClouds.length; i ++) {
    int randomImage = floor(random(0, 4));
    myClouds[i] = new Cloud(clouds[randomImage]);
  }

  fullScreen(P2D);
}

void draw() {
  if (startup) {
    cursor();
    startUp();
  } else if (game) {
    noCursor();
    gameScreen();
  } else if (death) {
    ds();
  }
}