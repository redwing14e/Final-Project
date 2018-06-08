PImage hazardImageV;
PImage hazardImageH;

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
    vertex(x + leg, y, 70, 0);
    vertex(x + leg, y + hi, 70, hi);
    vertex(x, y + hi, 0, hi);
    endShape();
  } else {
    spikes = hazardImageH;
    beginShape(); 
    texture(spikes);
    vertex(x, y, 0, 0);
    vertex(x + leg, y, leg, 0);
    vertex(x + leg, y + hi, leg, 70);
    vertex(x, y + hi, 0, 70);
    endShape();
  }


  if (charX > x - charSize && charX < x + leg && charY > y - charHeight && charY < y + hi) {   
    origin();
    death = true;
    game = false;
  }
}

void hazSettings(){
  hazardImageV = loadImage("spikesV.png");
  hazardImageV.resize(70, 70);
  hazardImageH = loadImage("spikesH.png");
  hazardImageH.resize(70, 70);
}