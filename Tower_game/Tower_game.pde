
boolean game = false;
boolean menu = false;
boolean startup = true;
boolean death = false;
boolean win = false;

void setup() {
  back = loadImage("landscape.png");
  platImage = loadImage("bricks.png");
  back.resize(width, height);
  platImage.resize(100, 100);
  fullScreen(P2D);
}

void draw() {
  if (startup) {
    startUp();
  } else if (game) {
    gameScreen();
  }else if(death){
    ds();
  }
}
