int size = 30;
int rows;
int cols;

void setup(){
  size (700, 700);
  rows = height/size;
  cols = width/size;
}

void draw(){
  background(#091647);
  
  for(int i = 0; i < cols; i++){
    for (int j = 0; j < rows; j++){
      float d = dist(mouseX, mouseY, i*size, j*size);
      float s = map(d, 0, width, size, size - 20);
      int r = int(map(i, 0, 10, 0, 73));
      int b = int(map(j, 0, 10, 0, 74));
      int g = int(map(i, 0, 10, 0, 73));
      fill(r, g, b);
      noStroke();
      rect (i*size, j*size, s, s);
    }
  }
}
