String[] array = {"one", "two", "three", "four", "five", "six"};
int num;
float prob;
void setup(){
  size(400, 400);
  num = int(random(0, array.length));
}

void draw(){
  
  prob=random(0, 1);
  
  if(prob < .25){
    text(array[0], 100, 100);
  }else{
    text(array[2], 100, 100);
  }
}
