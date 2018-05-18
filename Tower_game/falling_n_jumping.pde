void jumpFall(){
  float gravity = 0.5;
  if (jump) {
    charY += ySpeed;
    if(ySpeed < 20){
      ySpeed += gravity;
    } else {
      ySpeed = 20;
    }

  }
}