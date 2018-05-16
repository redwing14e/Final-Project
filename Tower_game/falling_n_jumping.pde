void jumpFall(){
  float gravity = 2.2;
  if (jump) {
    charY += ySpeed;
    if(ySpeed < 20){
      ySpeed += gravity;
    } else {
      ySpeed = 20;
    }

  }
}