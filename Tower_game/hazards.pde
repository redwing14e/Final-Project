//loads the images for verical and horizontal hazards
PImage hazardImageV;
PImage hazardImageH;

void haz(float x, float y, float leg, float hi, boolean vert) {
  //makes a varaiable for spikes
  PImage spikes;
  
  //gets settings ready for displaying the hazards
  noStroke();
  fill(255, 0, 0);
  textureMode(IMAGE);
  textureWrap(REPEAT);
  //displays the vertical spikes if it is set for vertical
  if (vert) {
    spikes = hazardImageV;
    beginShape(); 
    texture(spikes);
    vertex(x, y, 0, 0);
    vertex(x + leg, y, 70, 0);
    vertex(x + leg, y + hi, 70, hi);
    vertex(x, y + hi, 0, hi);
    endShape();
  //displays the horizontal spikes if the spikes are not set to be vertical
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

  //once the player is within the area of the hazard death screen plays and game screen stops playing
  if (charX > x - charSize && charX < x + leg && charY > y - charHeight && charY < y + hi) {   
    origin();
    death = true;
    game = false;
  }
}

//loads images for hazards
void hazSettings(){
  hazardImageV = loadImage("spikesV.png");
  hazardImageV.resize(70, 70);
  hazardImageH = loadImage("spikesH.png");
  hazardImageH.resize(70, 70);
}
