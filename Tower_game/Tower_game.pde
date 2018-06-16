
boolean game = false;
boolean menu = false;
boolean startup = true;
boolean death = false;
boolean win = false;

void setup() {
  frameRate(30);
  startupSettings();
  gameSettings();
  hazSettings();
  platSettings();
  deathSettings();
  charSettings();

  //size(800, 800, P2D);
  fullScreen(P2D);
} 

void draw() {
  //println(frameRate);
  if (startup) {
    cursor();
    startUp();
  } else if (game) {
    noCursor();
    gameScreen();
  } else if (death) {
    ds();
  } else if (menu) {
    cursor();
    ms();
  }
}
