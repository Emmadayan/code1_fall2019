int x = 0;
float xPos = 100;
float yPos = 100;
float xSpeed;
float ySpeed;
float size = 50;
float distance;
boolean rectClicked = false;

void setup() {
  size (600, 600);
  xSpeed = random(2, 5);
  ySpeed = random(-2, 2);
}

void draw() {

  changeBackground();
  
  xPos += xSpeed;
  yPos += ySpeed;
  
  distance = getDistance();
  
  if((mouseX >= xPos) && (mouseX<= xPos+50) && (mouseY >= yPos) && (mouseY <= yPos+50)){
    println(distance);
    fill(105, 174, 224); 
  }else{
    fill(17, 28, 36); }
  
    if (rectClicked){
    xPos = randomInt(100, 400);
    yPos = randomInt (100, 400);  
  }
  
  
 if (xPos > width - size || xPos < 100 || xPos > 400){
   xSpeed = -xSpeed;
 }
 
 if (yPos > height - size || yPos < 100 || yPos > 400){
   ySpeed = -ySpeed;
 }
 
  //if (mousePressed && distance < size/2){
  //  xSpeed = 0;
  //  ySpeed = 0;
  //}
  

  rect (xPos, yPos, size, size);
  rectClicked = false;
}

void mousePressed(){
    if ((mouseX >= xPos) && (mouseX<= xPos+50) && (mouseY >= yPos) && (mouseY <= yPos+50)){
      rectClicked = !rectClicked;
      println(rectClicked);
    }
}

void changeBackground(){
  int r, g, b;
  float lerpValue = (yPos/height);
  r = int (lerp(255, 0, lerpValue));
  g = int (map(yPos, 0, height, 123, 68));
  b = int (map(yPos, 0, height, 156, 87));
  background (r, g, b);
}
  
float getDistance(){
  return dist(mouseX, mouseY, xPos, yPos) ;
}

int randomInt(float low, float high){
  return int (random(low, high));
}

  
