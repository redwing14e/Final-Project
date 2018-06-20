//value for alpha of screen for fade in effect
float a = 0;

//font for death screen
PFont deathFont;

void ds() {
  //loads in textfont and aligns
  textFont(deathFont);
  textAlign(CENTER, CENTER);
  //fills background grey
  fill(50, a);
  //increaes alpha value for fade in 
  a += 2;
  //draws rectangle that fills screen grey
  noStroke();
  rect(0, 0, width, height);
  
  
  //if f is pressed game continues and death screen turns off
  if (keyPressed) {
    if (key == 'f' || key == 'F') {
      game=true;
      death=false;
      a=0;
    }
  }
  //displays everything when the background has faded in enough
  if (a>=100) {
    fill(255);
    text("Press 'f' to Pay Respect", width/2, 3*height/4);

    //draw settings for the sad face
    noFill();
    stroke(255);
    strokeWeight(30);
    ellipseMode(CENTER);

    //base circle
    ellipse(width/2, height/2, 900, 900);

    //eyes
    ellipse(width/2 + 90, height/2 - 90, 90, 90); //right eye
    ellipse(width/2 - 90, height/2 - 90, 90, 90); //left eye
    arc(width/2, 3 * height/4 - 50, 450, 450, PI, 2 * PI);//mouth
    strokeWeight(1);
  }
}

//loads font for death screen
void deathSettings () {
  deathFont = createFont("Medusa Gothic.otf", 40);
}