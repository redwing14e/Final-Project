
boolean game = false;
boolean menu = false;
boolean startup = true;
boolean death = false;
boolean win = false;

void setup() {
  back = loadImage("back.png");
  platImage = loadImage("bricks.png");
  back.resize(width/2, height);
  platImage.resize(200, 200);
  barbs = loadImage("barbwire.png");
  barbs.resize(50, 50);
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