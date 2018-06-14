boolean jump = false;
void jumpFall() {

  float gravity = 2.2;
  if (keyPressed && key == 't') {
    gravity = 0.01;
  } else {
    gravity = 2.2;
  }
  if (jump) {
    charY += ySpeed;
    if (ySpeed < 125) {
      ySpeed += gravity;
    } else {
      ySpeed = 125;
    }
  }
}
void charJump() {
  if (!jump) {
    ySpeed = -45;
    //sets jump to true so player can not jump within their jump
    jump = true;
  }
}