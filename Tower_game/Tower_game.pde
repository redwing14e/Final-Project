
boolean game = false;
boolean menu = false;
boolean startup = true;
boolean death = false;
boolean win = false;

void setup() {
  back = loadImage("back.png");
  back.resize( 1200, 900);
  
  landscape =loadImage("landscape.png");
  landscape.resize(width, height);
  
  platImage = loadImage("bricks.png");
  platImage.resize(200, 200);
  
  barbs = loadImage("spikes.png");
  barbs.resize(50, 50);
  
  medGothic = createFont("Medusa Gothic.otf", 40);
  
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