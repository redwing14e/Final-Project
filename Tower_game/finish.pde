int endCount;
void winScreen(){
  textFont(startFont);
  textAlign(CENTER,CENTER);
  text("CONGRATULATIONS",-900,-10300);
  charX-=xSpeed;
  if(endCount>1000){
    won=false;
    startup=true;
    endCount=0;
    origin();
  }
  endCount++;
}
