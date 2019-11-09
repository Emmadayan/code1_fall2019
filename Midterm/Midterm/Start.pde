class Start {
  
  float xPos;
  float yPos;
  color c;
  int size;

  Start(){
    c = (#f2c11d);
    xPos = width/2;
    yPos = height/2;
    
    size = 35;
  }
  
  void appear(){
    fill(c);
    arc(width/2, height/2, size, size, map((millis() % 500), 0, 500, 0, 0.52), map((millis() % 500), 0, 500, TWO_PI, 5.76) );
  }
  
  void click(){
  if (mousePressed){
    screen = 1;
    }
  }


}
