boolean backC = false;
int backCount =0;
void ms() {
  textFont(startFont);
  textAlign(LEFT, TOP);
  if (mousePressed && mouseX>width/10 && mouseY>height/10 && mouseX< 570 && mouseY< height/10 + height/13) {
    backC=true;
  }

  if (!backC) {
    fill(150, 250, 255);
    rect(0, 0, width, height);
    fill(0);
    text("BACK", width/10, height/10);
    backCount=0;
  } else {
    fill(0);
    rect(0, 0, width, height);
    fill(255, 0, 0);
    backCount++;
    text("BACK", width/10, height/10);
    if (backCount>10) {
      game = true;
      backC=false;
      menu = false;
    }
  }
  
  if (mousePressed && mouseX>width/10 && mouseY>8*height/10 && mouseX< 617 && mouseY< 954) {
    startup = true;
    menu = false;
    origin();
  }
  fill(255);
  rect(width/10, 8 * height/10, 425, 90);
  fill(0);
  text("START", width/10, 8 * height/10);

  fill(0);
  rect(width/2-240, 580, 680, 240, 30);
  rect(width/2-50, 360, 240, 300, 30);
  fill(255, 245, 160);
  rect(width/2, 600, 200, 200, 30);
  rect(width/2-30, 380, 200, 200, 30);
  rect(width/2-220, 600, 200, 200, 30);
  rect(width/2+220, 600, 200, 200, 30);

  if (backC) {
    fill(255, 0, 0);
  } else {
    fill(0);
  }
  textFont(helpFont);
  textAlign(CENTER, CENTER);
  textSize(78);
  text("W", width/2+70, 440);
  text("A", width/2-120, 660);
  text("S", width/2+100, 660);
  text("D", width/2+320, 660);
  textSize(32);
  text("JUMP", width/2+70, 520);
  text("MOVE", width/2-120, 720);
  text("LEFT", width/2-120, 760);
  text("MOVE", width/2+320, 720);
  text("RIGHT", width/2+320, 760);
  text("ABSOLUTELY", width/2+100, 720);
  text("USELESS", width/2+100, 760);
}
