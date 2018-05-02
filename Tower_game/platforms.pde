void platforms() {
  plat(-groundLength/2, 0, groundLength, height/2);
  plat(-10, -150, 300, 30);


  float platTempX = -120;
  float platTempY = -120;
  for (int i = 0; i < 11; i ++) {
    plat(platTempX, platTempY, 100, 25);
    platTempY -= 260;
   // platTempX += 100;
  }
}