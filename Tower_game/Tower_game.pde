<<<<<<< HEAD
//hello m8
boolean game = false;
=======

boolean game = true;
>>>>>>> d1115630f9ac1459cb74369307684194cca634d1
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
