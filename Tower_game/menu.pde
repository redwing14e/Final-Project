boolean backC = false;
int backCount =0;
void ms() {
  textFont(startFont);
  textAlign(LEFT,TOP);
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
  
  fill(0);
  rect(width/2-240,580,680,240,30);
  rect(width/2-50,360,240,300,30);
  fill(255,245,160);
  rect(width/2,600,200,200,30);
  rect(width/2-30,380,200,200,30);
  rect(width/2-220,600,200,200,30);
  rect(width/2+220,600,200,200,30);
  
  if(backC){
    fill(255,0,0);
  }else{
    fill(0);
  }
  textFont(helpFont);
  textAlign(CENTER,CENTER);
  textSize(78);
  text("S",width/2+100,700);
  
  
}
