


boolean game = false;

boolean menu = false;
boolean startup = true;
boolean death = false;
boolean win = false;

void setup() {
<<<<<<< HEAD
=======
 //size(800, 800);
>>>>>>> 809a8bd6853998b86b81c7155e3587d34497182b
 fullScreen();
}

void draw() {
  if(startup){
    startUp();
  }else if(game){
    gameScreen();
  }

}
