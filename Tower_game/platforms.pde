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

  if (charY > y - (charHeight + 1) && charY < y + hi) {
    if (charY > y && charY < y + hi) {
      if (charX > x - charSize && charX < x + xSpeed) {
        charX = x - charSize;
      } else if (charX < x + leg && charX > (x + leg) - (charSize + xSpeed)) {
        charX = x + leg;
      }
    }
    if (charX > x - charSize && charX < x + leg && charY > y - charHeight && charY < y + hi/2) {
      if (jump) {
        if (ySpeed >= 0) {
          jump = false;
          charY = y - charHeight;
          ySpeed = 0;
        } else {
          charY = y + hi;
          ySpeed = 0;
        }
      }
    } else {
      //this bit here makes it fall of edges
      if (charX < x - charSize && charX > x - charSize - (xSpeed + charSize) && charY < y + charHeight) {
        jump = true;
      } 
      if (charX > x + leg && charX < (x + leg) + (xSpeed + charSize) && charY < y + charHeight) {
        jump = true;
      }
    }
  }
}

void platforms() {
  plat(-groundLength/2, 0, groundLength, height/2);

  plat(0, -200, 200, 25);


  //walls
  plat(-wallsPos, -10000, 200, 10000);
  plat(wallsPos, -10000, 200, 10000);
}

void platSettings() {
  platImage = loadImage("bricks.png");
  platImage.resize(200, 200);
}