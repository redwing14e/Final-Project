

void plat(float x, float y, float leg, float hi) {
  stroke(0);
  textureMode(IMAGE);
  textureWrap(REPEAT);
  beginShape(); 
  texture(platImage);
  vertex(x, y, 0, 0);
  vertex(x + leg, y, leg, 0);
  vertex(x + leg, y + hi, leg, hi);
  vertex(x, y + hi, 0, hi);
  endShape();
  //when the character is within the platform or just above do run anything that the platform would do to effect it
  if (charY > y - (charHeight + 1) && charY < y + hi) {
    
    //when the character is within the platform  vertically
    if (charY > y && charY < y + hi) {

      //check if the player is just outright outside the wall and place them just at the wal so they cant run in
      if (charX > x - charSize && charX < x + xSpeed) {
        charX = x - charSize;
      } else if (charX < x + leg && charX > (x + leg) - (charSize + xSpeed)) {
        charX = x + leg;
      }
    }
    //if the character is within the platform both vertiaclly and horizontally 
    if (charX > x - charSize && charX < x + leg && charY +  charHeight > y  && charY + charHeight/2 < y + hi) {
      //if the character is in jump and coming down than place them ontop the platform
      if (jump) {
        if (ySpeed >= 0) {
          jump = false;
          charY = y - charHeight;
          ySpeed = 0;
          //if they are in jump but going up than put them under the platform to stop them from going through the bottom
        } else {
          charY = y + hi;
          ySpeed = 0;
        }
      }
      //if they are still within the platform vertically or just above yet not within it horizontally
    } else {
      //if they are in the area between the platform and their outer corner of the thier characterthey fall of the ledges
      if (charX + charSize < x + 25 && charX + charSize > x   - (xSpeed + charSize) && charY < y + charHeight) {
        jump = true;
      } 
      if (charX > (x + leg) - 25 && charX < (x + leg)  + (xSpeed + charSize)  && charY < y + charHeight) {
        jump = true;
      }
    }
  }
}
float movePlat = 800;
void platandhaz() {


  plat(-groundLength/2, 0, groundLength, height/2);

  plat(-700, -250, 200, 25);
  plat(200, -450, 200, 25);
  haz(-300, -400, 650, 30, false);
  plat(550, -700, 500, 25);
  haz(450, -500, 50, 80, true);
  plat(1125, -1000, 75, 25);
  if (keyPressed && keyCode == LEFT) {
    movePlat -= 5;
  } else if (keyPressed && keyCode == RIGHT) {
    movePlat += 5;
  }
 
  if(movePlat < -wallsPos + 200){
    movePlat = -999;
  } else if (movePlat > wallsPos - 200){
    movePlat = 999;
  }
  plat(movePlat, -1300, 200, 25); 
  plat(1400, -1200, 185, 20);
  plat(1565, -1475, 20, 285);
  
  haz(0, -1390, 90, 90, true);
  plat(-1000, -1600, 200, 50);
  
  for(float i = 0; i < 5; i++ ){
    plat(-1000, -1600 - i * 400, 200, 25);
  }
  
  plat(-600,- 3400, 400, 25);
  
  plat(0,-3600, 400, 25);
  haz(157, -3675, 75, 75, true);

  plat(800,-3800, 400, 25);
  haz(1015, -3875, 75, 75, true);
  
  plat(-1000, -4225, 2125, 25);


  //walls
  plat(-wallsPos, -10000, 200, 10000);
  plat(wallsPos, -10000, 200, 10000);

}

void platSettings() {
  platImage = loadImage("bricks.png");
  platImage.resize(200, 200);
}