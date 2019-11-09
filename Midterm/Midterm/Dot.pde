class Dot{
  color c;
  float xPos;
  float yPos;
  float xSpeed;
  float ySpeed;
  
  //Dot(float _xPos, float _yPos){
    Dot(){
    c = (255);
    //xPos = _xPos; 
    //yPos = _yPos; 
    xPos = random (4, width);
    yPos = random (4, height);
  }
  
  void appear(){
    noStroke();
    fill (c);
    ellipse(xPos, yPos, 7, 7);
  }
}

//make a grid? put them in the grid?
