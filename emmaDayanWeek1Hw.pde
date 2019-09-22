//draw a circle at the bottom right of the canvas 
//fill circle with colors that randomly generate


float xPos;
float yPos;
float size = 200;


void setup(){
  size (600, 600);
  noStroke();
  xPos = width/1.5;
  yPos = height/1.5;
}

void draw(){
  ellipse(xPos, yPos, size, size);
  fill (random(0,255), random(0,255), random(0,255));  
}
