
boolean game = false;
boolean menu = false;
boolean startup = true;
boolean death = false;
boolean win = false;

void setup() {
  back = loadImage("landscape.png");
  back.resize(width, height);
  fullScreen();
}

void draw() {
  if (startup) {
    startUp();
  } else if (game) {
    gameScreen();
  }
}
