


boolean game = true;

boolean menu = false;
boolean startup = true;
boolean death = false;
boolean win = false;

void setup() {
 size(800, 800);
}

void draw() {
  if(startup){
    startUp();
  }else if(game){
    gameScreen();
  }

}
