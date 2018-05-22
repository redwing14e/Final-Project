
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

  medGothic = createFont("Medusa Gothic.otf", 40);

  fullscreen(P2D);
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