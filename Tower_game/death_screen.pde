
float a = 0;
void ds() {
  textSize(40);
  textAlign(CENTER, CENTER);
  fill(50, a);
  a += 2;
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