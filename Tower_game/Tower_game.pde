


boolean game = false;

boolean menu = false;
boolean startup = true;
boolean death = false;
boolean win = false;

void setup() {
 fullScreen();
}

void draw() {
  if(startup){
    startUp();
  }else if(game){
    gameScreen();
  }

}
