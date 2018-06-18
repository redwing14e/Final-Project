//creates a boolean value for the direction the character is going
boolean right;

//creates a array of booleans for the key commands for them rather being used or not used
boolean[] keys = {false, false, false, false, false};


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
  if (keyCode == RIGHT) {
    keys[3] = true;
  }
  if (keyCode == LEFT) {
    keys[4] = true;
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
  if (keyCode == RIGHT) {
    keys[3] = false;
  }
  if (keyCode == LEFT) {
    keys[4] = false;
  }
}

void keyControl() {
  //jumps player on key command 
  if (keyPressed) {
    if (keys[1]) {
      right = false;
      if (!jump) {
        walkCount +=1;
      }
      charX -= xSpeed;
    } else if (keys[0]) {
      if (!jump) {
        walkCount +=1;
      }
      right = true;
      charX += xSpeed;
    }
    
    if(keys[3]){
      movePlat += xSpeed;
    } else if (keys[4]){
      movePlat -= xSpeed;
    }
  }
  if (!jump) {
    ySpeed = 0;
    if (keyPressed) {
      if (keys[2]) {
        charJump();
      }
    }
  }
 /* if (keyPressed) {
    if (key == 'r' || key == 'R') {
      charX = -350;
      charY = -8550 - charHeight;
      jump = false;
    }
  } */
}