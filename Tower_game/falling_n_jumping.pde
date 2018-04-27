void jumpFall(){
  float gravity = 1.1;
  if (jump) {
    charY += ySpeed;
    if(ySpeed < 25){
      ySpeed += gravity;
    } else {
      ySpeed = 25;
    }
    
    if(ySpeed > -1 && ySpeed < 1){
      finishY = charY;
      println("y distance of jump: ", abs(finishY - startY));
    }
  }
}
