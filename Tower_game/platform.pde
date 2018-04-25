void platforms(){
  plat(groundX, groundY, groundWidth, groundHeight, color(0, 255, 0));
  plat(400, 250, 100, 20, color(0, 0, 255));
  plat(width + 150, height/2 + 10, 100, 20, color(255, 0, 0));
  plat(500, groundY - 50, 50, 50, color(0));
  
  float platTempX = groundX;
  float platTempY = groundY - 20;
  for(int i = 0; i < 10; i ++){
    plat(platTempX, platTempY, 100, 20, color(0));
    //platTempX += 120;
    platTempY -= 100;
  }
}