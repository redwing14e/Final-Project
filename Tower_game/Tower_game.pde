boolean game = true;
boolean menu = false;
boolean startup = false;
boolean death = false;
boolean win = false;

void setup() {
 size(800, 800);
}


void draw() {
  if(game){
    gameScreen();
  }

}
