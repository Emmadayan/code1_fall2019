class Ghost{
  color c;
  float xPos;
  float yPos;
  float xSpeed;
  float ySpeed;
  
  Ghost(){
    c = (#6056d1);
    xPos = random (0, width);
    yPos = random (0, height);
    xSpeed = 2;
    ySpeed = 2;
  }
  //if(dist(myPlayer.xPos, xPos)<50){
   // xPos = random....
  //}
  void appear(){
    noStroke();
    fill (c);
    ellipse(xPos, yPos, 14, 14);
  }
  
   void move(){
    xPos = xPos + xSpeed;
    yPos = yPos + ySpeed;
  }
  
    void boundaries(){
    if (xPos > width-24){
      xSpeed = -xSpeed;
    }
    if (xPos < 24){
      xSpeed = -xSpeed;
    }
    if (yPos > height-24){
      ySpeed = -ySpeed;
    }
    if (yPos < 24){
      ySpeed = -ySpeed;
    }
  }
   
}

//give them an eye/shape?
//make a way to freeze them for a certain amount of time
