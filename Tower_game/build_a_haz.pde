void haz(float x,float y, float leg,float hi){
  noStroke();
  fill(255, 0, 0);
  rectMode(CORNER);
  rect(x, y, leg, hi);
  
  if(charX > x - charSize && charX < x + leg && charY > y - charSize && charY < y + hi) {
    origin();
  }
  
}
