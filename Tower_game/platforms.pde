void platforms() {
  plat(-groundLength/2, 0, groundLength, height/2);
  plat(-10, -150, 300, 30);
  
  
  //wals
  plat(-wallsPos, -10000, 200, 10000);
  plat(wallsPos, -10000, 200, 10000);



  float platTempX = -120;
  float platTempY = -120;
  for (int i = 0; i < 101; i ++) {
    plat(platTempX, platTempY, 100, 25);
    platTempY -= 260;
     //platTempX += 100;
  }
}