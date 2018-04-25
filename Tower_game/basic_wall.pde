/*
void regWall(float x, float y, float leg, float hi, color c) {
  fill(c);
  rectMode(CORNER);
  rect(x, y, leg, hi);

  if (charX > x - (charSize + xSpeed)  && charX < (x + leg) +xSpeed && charY < (y + hi) && charY > y - charSize) {
    if (charX > x - charSize && charX < x + leg) {
      if (jump) {
        if (charY < y + hi/2 + charSize) {
          jump = false;
          charY = y - charSize;
          ySpeed = 0;
        } else {
          jump = true;
          charY = y - hi;
        }
      } else {
        //this bit here makes it fall of edges
        if (charX < x - charSize && charX > x - charSize - (xSpeed + charSize) ) {
          charX = x - charSize;
        }
        if (charX > x + leg && charX < (x + leg) + (xSpeed + charSize)) {
          charX = x + leg;
        }
      }
    } else if (charX > x - (charSize + xSpeed) && charX < x - charSize) {
      charX = charX + xSpeed;
    } else if (charX > x + leg && charX < (x + leg) + xSpeed) {
      charX = charX - xSpeed;
    }
  }
}
*/