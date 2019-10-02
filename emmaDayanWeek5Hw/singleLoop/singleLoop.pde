int size;

void setup(){
  size (900, 500);
}

void draw(){
  background (0);
  for (int i = 0; i < 20; i++){
    ellipse (20*i, 20*i, 20*i, 20*i);
  }
}
