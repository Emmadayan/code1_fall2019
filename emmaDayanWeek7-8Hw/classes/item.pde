class Person{
    float xPos;
    float yPos;
    color c;
    float ySpeed;
    
    Person(){
      c = color (random(1,100), random (100,244), random(100,200));
      xPos = random(0+10, width-10);
      yPos = 0;
      ySpeed = random(1, 4);
    }
    
    void drawPerson(){
      noStroke();
      fill (c);
      ellipse(xPos, yPos, 20, 20);
      rect(xPos-10, yPos+10, 20, 20);
    }
    
    void fall(){
      yPos = yPos+ySpeed;
      if (yPos > height){
        ySpeed = 0;
      }
    }
}
