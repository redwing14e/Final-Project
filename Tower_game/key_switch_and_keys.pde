
boolean[] keys = {false, false, false};

void keyPressed() {
  if (key == 'd' || key == 'D') {
    keys[0] = true;
  }

  if (key == 'a' || key == 'A') {
    keys[1] = true;
  }  

  if (key == 'w' || key == 'W') {
    keys[2] = true;
  }
}
void keyReleased() {
  if (key == 'd' || key == 'D') {
    keys[0] = false;
  }
  if (key == 'a' || key == 'A') {
    keys[1] = false;
  }  
  if (key == 'w' || key == 'W') {
    keys[2] = false;
  }
}

void keyControl(){
    //jumps player on key command 
  if (keyPressed) {
    if (keys[1]) {
      charX -= xSpeed;
    } else if (keys[0]) {
      charX += xSpeed;
    }
  }
 if (!jump) {
   ySpeed = 0;
   if(keyPressed){
      if(keys[2]) {
        ySpeed = -20;
        //sets jump to true so player can not jump within their jump
        jump = true;
        startX = charX;
        startY = charY;
      }
   }
 }
  if (keyPressed) {
    if (key == 'r' || key == 'R') {
      origin();
    }
  }

}
