void haz(float x, float y, float leg, float hi, boolean vert) {
  PImage spikes;




  noStroke();
  fill(255, 0, 0);
  
  textureMode(IMAGE);
  textureWrap(REPEAT);
  if (vert) {
    spikes = hazardImageV;
    beginShape(); 
    texture(spikes);
    vertex(x, y, 0, 0);
    vertex(x + leg, y, 50, 0);
    vertex(x + leg, y + hi, 50, hi);
    vertex(x, y + hi, 0, hi);
    endShape();
  } else {
    spikes = hazardImageH;
    beginShape(); 
    texture(spikes);
    vertex(x, y, 0, 0);
    vertex(x + leg, y, leg, 0);
    vertex(x + leg, y + hi, leg, 50);
    vertex(x, y + hi, 0, 50);
    endShape();
  }


  if (charX > x - charSize && charX < x + leg && charY > y - charSize && charY < y + hi) {   
    origin();
    death = true;
    game = false;
  }
}