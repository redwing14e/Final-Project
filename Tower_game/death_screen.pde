void ds(){
  
  fill(200,250,50, 15);
  rect(0, 0, width, height);
  if(keyPressed){
    if (key == 'f' || key == 'F'){
      game=true;
      death=false;
    }
  }
}
