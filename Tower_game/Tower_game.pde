//hello m8
boolean game = false;
boolean menu = false;
boolean startup = true;
boolean death = false;
boolean win = false;

void setup() {
 size(800, 800);
}

//m8
void draw() {
  if(startup){
    startUp();
  }else if(game){
    gameScreen();
  }

}
