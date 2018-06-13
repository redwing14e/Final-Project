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