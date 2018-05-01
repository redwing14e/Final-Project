void platforms() {
  plat(-groundLength/2, 0, groundLength, height/2, color(0, 255, 0));
  plat(-10, -150, 300, 30, color(0, 0, 255));

  float platTempX = -120;
  float platTempY = -25;
  for (int i = 0; i < 10; i ++) {
    plat(platTempX, platTempY, 100, 25, color(0));
    platTempY -= 260;
   // platTempX += 100;
  }
}
