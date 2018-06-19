//creates a boolean for whether or not the character is within a jump or not
boolean jump = false;

//creates a function that causes the character to fall when he is in a jump
void jumpFall() {
  //picks a gravity value 
  float gravity = 2.2;
  
  //if the character is in a jup apply the gravity to the ySpeed and applies the ySpeed to the character
  if (jump) {
    charY += ySpeed;
    //puts a max of ySpeed
    if (ySpeed < 125) {
      ySpeed += gravity;
    } else {
      ySpeed = 125;
    }
  }
}

//function for the character to go up in a jump
void charJump() {
  //only gies of when not in a jump
  if (!jump) {
    ySpeed = -45;
    //sets jump to true so player can not jump within their jump
    jump = true;
  }
}