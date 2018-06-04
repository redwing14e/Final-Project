boolean backC = false;
int backCount =0;
void ms() {

  fill(150, 250, 255);
  rect(0, 0, width, height);


  fill(255);
  rect(width/10, height/10, 1.88*width/10, height/13);
  fill(0);
  if (mousePressed && mouseX>width/10 && mouseY>height/10 && mouseX< width/10 + 1.88*width/5 && mouseY< height/10 + height/13) {
    fill(0);
    rect(width/10, height/10, 1.88*width/10, height/13);
    fill(255, 0, 0);
    game = true;
    menu = false;
  }
  textFont(startFont);
  text("BACK", width/10, height/6+5);
  if (!backC && backCount<10){
    
  }
}