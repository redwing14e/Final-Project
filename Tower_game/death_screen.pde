float a = 0;

PFont deathFont;


void ds() {

  textFont(deathFont);
  textAlign(CENTER, CENTER);
  fill(50, a);
  a += 3;
  rect(0, 0, width, height);
  if (keyPressed) {
    if (key == 'f' || key == 'F') {
      game=true;
      death=false;
      a=0;
    }
  }
  if (a>=100) {
    fill(255);
    text("Press 'f' to Pay Respect", width/2, 3*height/4);
  }
}
void deathSettings () {
  deathFont = createFont("Medusa Gothic.otf", 40);
}