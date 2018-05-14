void haz(float x,float y, float leg,float hi){
  noStroke();
  fill(255, 0, 0);
  beginShape(); 
  textureMode(IMAGE);
  textureWrap(REPEAT);
  texture(barbs);
  vertex(x, y, 0, 0);
  vertex(x + leg, y, leg, 0);
  vertex(x + leg, y + hi, leg, 50);
  vertex(x, y + hi, 0, 50);
  endShape();
  
  if(charX > x - charSize && charX < x + leg && charY > y - charSize && charY < y + hi) {   
    origin();
    death = true;
    game = false;
  }
  
}