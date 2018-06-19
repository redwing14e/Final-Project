//counter variable for how long the win screen stays
int endCount;
//creates array of drops
Drop[] drops = new Drop[2000];


void winScreen() {

  //runs through array and draws every drop and makes it drop
  for ( int i = 0; i < drops.length; i++) {
    drops[i].fall();
    drops[i].show();
  }

  //text to ongratualte player
  textFont(startFont);
  textAlign(CENTER, CENTER);
  text("CONGRATULATIONS", -900, -10300);
  
  //makes character run off screen
  charX-=xSpeed;
  
  //once the counter reaches a certain point startup becomes true
  if (endCount>350) {
    won=false;
    startup=true;
    endCount=0;
    origin();
  }
  
  //increases end counter
  endCount++;
}

//creates object for smile drops
class Drop {
  //decclares and sets random variables for 
  float x = random(-2000, 100); 
  float y = random(-11900, -11000);
  color ranColor = color(random(100, 255), random(100, 255), random(100, 255));
  float z = random(0, 30);
  float ySpeed = map(z, 0, 30, 1, 15);
  float shapeSize = map(z, 0, 30, 1, 50);
  float gravity = map(z, 0, 30, 0, 0.2);
  
  void fall() {
    //makes it fall
    y= y + ySpeed;
    //makes it accelerate
    ySpeed = ySpeed + gravity;
    
    //resets y position when drrop reaches bottom
    if( y > -9550){
      y = random(-11900, -11000);
      ySpeed = map(z, 0, 30, 1, 15);
      z = random(0, 30);
    }
    
  }
  
  void show() {
    //draw settings for the smile
    noFill();
    stroke(ranColor);
    strokeWeight(shapeSize/ 30);
    ellipseMode(CENTER);

    //base circle
    ellipse(x, y, shapeSize, shapeSize);

    //eyes
    ellipse(x + shapeSize/10, y - shapeSize/ 10, shapeSize/10, shapeSize/ 10); //right eye
     ellipse(x - shapeSize/10, y - shapeSize/ 10, shapeSize/10, shapeSize/ 10); //left eye
    arc(x, y, shapeSize/2, shapeSize/2, 0, PI);//mouth
  }
}
