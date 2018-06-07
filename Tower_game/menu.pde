boolean backC = false;
int backCount =0;
void ms() {
  textFont(startFont);
  textAlign(LEFT,TOP);
  if (mousePressed && mouseX>width/10 && mouseY>height/10 && mouseX< width/10 + 1.88*width/5 && mouseY< height/10 + height/13) {
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
  
  
  
  
}
