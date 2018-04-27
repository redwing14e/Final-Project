void plat(float x, float y, float leg, float hi, color c) {
  stroke(0);
  fill(c);
  rectMode(CORNER);
  rect(x, y, leg, hi);

  if (charY > y - (charSize + 1) && charY < y + hi) {
    if (charY > y && charY < y + hi) {
      if (charX > x - charSize && charX < x + xSpeed) {
        charX = x - charSize;
      } else if (charX < x + leg && charX > (x + leg) - (charSize + xSpeed)) {
        charX = x + leg;
      }
    }
    if (charX > x - charSize && charX < x + leg && charY > y - charSize && charY < y + hi/2) {
      if (jump) {
        if (ySpeed >= 0) {
          jump = false;
          charY = y - charSize;
          ySpeed = 0;
          finishX = charX;
          println("x distance of jump: ", finishX - startX);
        } else {
          charY = y + hi;
          ySpeed = 0;
        }
      }
    } else {
      //this bit here makes it fall of edges
      if (charX < x - charSize && charX > x - charSize - (xSpeed + charSize) && charY < y + charSize) {
        jump = true;
      } 
      if (charX > x + leg && charX < (x + leg) + (xSpeed + charSize) && charY < y + charSize) {
        jump = true;
      }
    }
  }
}
