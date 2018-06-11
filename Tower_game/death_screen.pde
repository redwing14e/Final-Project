float a = 0;

PFont deathFont;


void ds() {
stroke(255);
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
    
     //draw settings for the smile
    noFill();
    
    strokeWeight(900/ 30);
    ellipseMode(CENTER);

    //base circle
    ellipse(width/2, height/2, 900, 900);

    //eyes
    ellipse(width/2 + 90, height/2 - 90, 90, 90); //right eye
     ellipse(width/2 - 90, height/2 - 90, 90, 90); //left eye
    arc(width/2, 3 * height/4 - 50, 450, 450,PI, 2 * PI);//mouth
    noStroke();
  }
}
void deathSettings () {
  deathFont = createFont("Medusa Gothic.otf", 40);
}