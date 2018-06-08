boolean jump = false;
void jumpFall() {
  float gravity = 2.2;
  if (jump) {
    charY += ySpeed;
    ySpeed += gravity;
  }
}