void jumpFall(){
  float gravity = 2.2;
  if (jump) {
    charY += ySpeed;
    if(ySpeed < 25){
      ySpeed += gravity;
    } else {
      ySpeed = 25;
    }

  }
}