
//creats function for plat forms
void plat(float x, float y, float leg, float hi) {
  //displays brick image repeadtly within space
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
    if (charX > x - charSize && charX < x + leg && charY +  charHeight > y  && charY + charHeight/5 < y + hi) {
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

//variables for platyer controlled moving platforms and  compouter controlled
float movePlat = 800;
float comPlat = 800;

//boolean for automated platform to go right or left so the moving platform doesnt leave the game 
Boolean platRight = true;

void platandhaz() {
  //ground
  plat(-groundLength/2, 0, groundLength, height/2);
  
  //first few platforms and hazards
  plat(-700, -250, 200, 25);
  plat(200, -450, 200, 25);
  haz(-300, -400, 650, 30, false);
  plat(550, -700, 500, 25);
  haz(450, -500, 50, 80, true);
  plat(1125, -1000, 75, 25);
  

  //keeps moving platform in tower
  if (movePlat < -wallsPos + 200) {
    movePlat = -999;
  } else if (movePlat > wallsPos - 200) {
    movePlat = 999;
  }
  //next few platforms including the player controlled moving platform
  plat(movePlat, -1300, 200, 25); 
  plat(1400, -1200, 185, 20);
  plat(1565, -1475, 20, 285);
  haz(0, -1390, 90, 90, true);
  plat(-1000, -1600, 200, 50);
  
  //for loop of platforms for ladder effect
  for (int i = 0; i < 5; i++ ) {
    plat(-1000, -1600 - i * 400, 200, 25);
  }
  
  //some more platforms and hazards
  plat(-600, - 3400, 400, 25);
  plat(0, -3600, 400, 25);
  haz(157, -3675, 75, 75, true);
  plat(800, -3800, 400, 25);
  haz(1015, -3875, 75, 75, true);
  plat(-1000, -4225, 2125, 25);
  
  //changes the direction of the automated platforms when they hit the walls of the tower
  if (comPlat < -wallsPos + 201) {
    platRight = true;
  } else if (comPlat > wallsPos - 201) {
    platRight = false;
  }
  
  //moves platform right if right is true and left if not
  if (platRight) {
    comPlat += 10;
  } else {
    comPlat -= 10;
  }
  
  //two sets of ladder moving platforms 
  for (int i = 0; i < 4; i ++) {
    plat(comPlat, -4400 - i * 400, 200, 25);
  }
  for (int i = 0; i < 4; i ++) {
    plat(-comPlat, -4600 - i * 400, 200, 25);
  }
  
  //more platforms
  plat(-400, -6200, 800, 50);
  plat(-1000, -6650, 200, 50);
  plat(movePlat, -6900, 200, 25);
  
  ///for loop of hazards for extra difficulty
  for (int i = 0; i < 5; i ++) {
    haz( -700 + i * 300, -7000, 50, 100, true);
  }
  
  //alot of platforms
  plat(800, -7350, 400, 25);
  plat(400, -7750, 200, 25);
  plat(0, -8150, 200, 25);
  plat(-400, -8550, 200, 25);
  plat(-400, -8950, 200, 25);
  plat(-800, -9300, 200, 25);
  plat(-800, -9700, 200, 25);


  //double for loop of hazards taht alos move and disappear into the wall
  for (int i = 0; i < 4; i ++) {
    for (int j = 0; j < 8; j ++) {
      if (comPlat - 1800 + j * 600 < 1300 && comPlat -1800 + j * 700 > -999) {
        haz(comPlat- 1800 + j * 600, -7700 - i * 400, 45, 100, false);
      }
    }
  }
  
  //more platforms for aesthetic of top of the tower
  plat(-wallsPos + 500, -10000, 1900, 125);
  plat(-wallsPos + 200, -10000, 50, 125);

  //walls
  plat(-wallsPos, -10025, 200, 10025);
  plat(-wallsPos + 10, -10050, 180,  25);
  plat(wallsPos, -10025, 200, 10025);
}
 
 
 //loads platforms image of bricks
void platSettings() {
  platImage = loadImage("bricks.png");
  platImage.resize(200, 200);
}
