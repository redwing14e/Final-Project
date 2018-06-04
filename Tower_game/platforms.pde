void platforms() {
  plat(-groundLength/2, 0, groundLength, height/2);
  
  plat(0, -200, 200, 25);
  
  
  //walls
  plat(-wallsPos, -10000, 200, 10000);
  plat(wallsPos, -10000, 200, 10000);
}