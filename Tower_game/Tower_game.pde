//booleans for every screen
boolean game = false;
boolean menu = false;
boolean startup = true;
boolean death = false;
boolean win = false;

void setup() {
  //controlled franmerate for unified play on all platforms
  frameRate(30);
  
  //runs and loads all settings of all different parts of the game
  startupSettings();
  gameSettings();
  hazSettings();
  platSettings();
  deathSettings();
  charSettings();

 //sets game to full screen
 fullScreen(P2D);
} 

void draw() {
   //conditional so screens don't play at the same time
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
