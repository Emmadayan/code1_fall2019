int brushSize; 
float brushChange = 15;

void setup(){
  size(1000, 1000); 
  background(255); 
  brushSize = 10; 
}

void draw(){
  fill(255, 2); 
  rect(0, 0, width, height); 
  
  if(mousePressed){
    fill(0, 255, 100); 
    noStroke(); 
    ellipse(mouseX, mouseY, brushSize, brushSize);
    fill(random(100,255), random(100,255), random(100,255));
    rect(random(1000), random(1000), brushSize, brushSize);
  }
  
  //if(keyPressed){
  //  brushSize += 10; 
  //}
}

void keyPressed(){
  if(key == CODED){
    if(keyCode == UP && brushSize <= 500){
      brushSize += brushChange; 
    }else if(keyCode == DOWN && brushSize >10){
      brushSize -= brushChange; 
    }
  }
}
