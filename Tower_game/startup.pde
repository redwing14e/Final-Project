void startUp(){
  float towerXpos = 2*width/3;
  float towerYpos = height/4;
  float towerWid = width/8;
  float towerHit = height/2;
  background(150,250,255);
  
  
  if(mouseX>towerXpos && mouseX<towerXpos+ towerWid && mouseY>towerYpos && mouseY<towerYpos+ towerHit){
    if(mousePressed){
      fill(0,255,0);
      game= true;
      startup=false;
    }else{
    fill(0,0,255);
    }
  }else{
    fill(255,0,0);
  }
  
  
  
  
  
  
  
  
  rect(towerXpos, towerYpos, towerWid, towerHit);
}
