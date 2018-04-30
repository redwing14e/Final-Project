void hazards(){
  float groundCenter = groundLength/2;
  haz(groundCenter + 600, -200, 80, 80);
  
  
  float hazTempX = groundCenter - 120;
  float hazTempY = - 155;
  for (int i = 0; i < 10; i ++) {
    haz(hazTempX, hazTempY, 100, 25);
    hazTempY -= 260;
  }
}
