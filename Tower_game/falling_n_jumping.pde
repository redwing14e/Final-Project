boolean jump = false;
void jumpFall() {
  float gravity = 0.1;
  if (jump) {
    charY += ySpeed;
    ySpeed += gravity;
  }
}