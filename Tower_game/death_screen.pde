float a = 0;

void ds(){
  fill(255,0,50, a);
  a += 10;
  rect(0, 0, width, height);
  if(keyPressed){
    if (key == 'f' || key == 'F'){
      game=true;
      death=false;
    }
  }
}
