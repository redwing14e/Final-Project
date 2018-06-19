//creates a boolean value for the direction the character is going
boolean right;

//creates a array of booleans for the key commands for them rather being used or not used
boolean[] keys = {false, false, false, false, false};

//void keypressed so all keys can be pressed 
void keyPressed() {
  //each key boolean is made true when that key is being pressed
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
  //whenever a key is realeased it checks which and makes that booelan false stopping the actions of that key
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
  //when a is pressed 
  if (keys[1]) {
    //the boolean which picksto draw the image righ becomes false so the image is drwan left
    right = false;
    if (!jump) {
      //runs character animation
      walkCount +=1;
    }
    //and the character moves left
    charX -= xSpeed;
  } else if (keys[0]) {
    //
    if (!jump) {
      //runs character animation
      walkCount +=1;
    }
    //ameks the boolean right true so image is drawn right
    right = true;
    //character goes left
    charX += xSpeed;
  }

  //makes the moveable platform go right with right key and left with left keyT
  if (keys[3]) {
    movePlat += xSpeed;
  } else if (keys[4]) {
    movePlat -= xSpeed;
  }
  
  //when the character is not jumping  it sets the y speed to 0 and also checks if the w key is being used and makes the player jumo
  if (!jump) {
    ySpeed = 0;
    if (keys[2]) {
      charJump();
    }
  }

//special key puts the character at the top for testin purposes
  if (keyPressed) {
    if (key == 'r' || key == 'R') {
      charX = -350;
      charY = -8550 - charHeight;
      jump = false;
    }
  }
}
