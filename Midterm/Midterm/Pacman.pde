class Pacman {
  color c;
  float xPos;
  float yPos;
  float xSpeed = 1;
  float ySpeed = 0;
  int radius = 20;
  int size;
  int playerSpeed = 4;


  
  
  Pacman(){
    c = (#f2c11d);
    xPos = width/2;
    yPos = height/2;
    
    size = 20;
  }
  
  void appear(){
    //noStroke();
    fill(c);
    //ellipse(xPos, yPos, size, size);
    //fill(0);
    arc(0, 0, radius, radius, map((millis() % 500), 0, 500, 0, 0.52), map((millis() % 500), 0, 500, TWO_PI, 5.76) );
  }
  
  void move(){
    
    if (keyPressed){
       if (keyCode == UP){
        yPos = yPos - playerSpeed;
        xSpeed = 0;
        ySpeed = -1;
      }
      if (keyCode == DOWN){
        yPos = yPos +playerSpeed;
        xSpeed = 0;
        ySpeed = 1;
        }
      if (keyCode == RIGHT){
        xPos = xPos + playerSpeed;
        xSpeed = 1;
        ySpeed = 0;
        }
      if (keyCode == LEFT){
        xPos = xPos -playerSpeed;
        xSpeed = -1;
        ySpeed = 0;
        }
    }else {
      xSpeed = 0;
      ySpeed = 0;
    }
  }
  
  void boundaries(){
    if (xPos > width-20){
      xPos = width-20;
    }
    if (xPos < 20){
      xPos = 20;
    }
    if (yPos > height-20){
      yPos = height-20;
    }
    if (yPos < 20){
      yPos = 20;
    }
  }
  
  
  //make a mouth/eye on the pacman
  
  void turn() {
  for ( int i=-1; i < 2; i++) {
    for ( int j=-1; j < 2; j++) {
      pushMatrix();
      translate(xPos + (i * width), yPos + (j*height));
      if ( xSpeed == -1) { 
        rotate(PI);
      }
      if ( ySpeed == 1) { 
        rotate(HALF_PI);
      }
      if ( ySpeed == -1) { 
        rotate( PI + HALF_PI );
      }
      appear();
      popMatrix();
    }
  }
}
}
