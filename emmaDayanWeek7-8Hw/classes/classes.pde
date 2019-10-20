Person myPerson;
Person [] myPeople;

void setup(){
  size(800, 600);
  myPerson = new Person();
  myPeople = new Person[30];
  
  for (int i = 0; i<30; i++){
    myPeople[i] = new Person();
  }
}

void draw(){
  background(255);
  myPerson.drawPerson();
  myPerson.fall();
  
  for (int i = 0; i<myPeople.length; i++){
    myPeople[i].drawPerson();
    myPeople[i].fall();
  }
  

}
