void ds(){
  
  fill(50,250,200);
  rect(0, 0, width, height);
  if(keyPressed){
    if (key == 'f' || key == 'F'){
      game=true;
      death=false;
    }
  }
}
