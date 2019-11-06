int screen;
Start start;
Pacman myPlayer;
Ghost myGhost;
Ghost []myGhosts;
Dot myDot;
//Dot []myDots;
ArrayList <Dot> myDots;

boolean dots = true;

void setup(){
  size (600, 800);
  ellipseMode(RADIUS);
  
  start = new Start();
  
  myPlayer = new Pacman();
  
  myGhost = new Ghost();
  myGhosts = new Ghost[4];
  for (int i = 0; i<4; i++){
    myGhosts[i] = new Ghost();
  }
  
  //myDot = new Dot();
  myDots = new ArrayList<Dot>();
  for (int i = 0; i<50; i++){
    myDots.add (new Dot());
  }
}

void draw(){
  
  switch(screen){
   case 0: 
     startScreen();
   break;
   case 1:
     gameScreen();
   break;  
   case 2:
     endScreen();
   break;
   case 3:
     winScreen();
    break;
 };} 
 
 void mousePressed(){
  if (screen == 0){
  if (dist(mouseX, mouseY, width/2, height/2)<25){
    //println("button clicked");
    //re-add the dots
    screen = 1;
    }
  }
  if (screen == 2){
  if (dist(mouseX, mouseY, width/2, height/2)<25){
    //println("button clicked");
    screen = 0;
    }
  }
  
  if (screen == 3){
  if (dist(mouseX, mouseY, width/2, height/2)<25){
    //println("button clicked"); 
    screen = 0;
    }
  }
 }
 
   void startScreen(){
    background(0);
    textSize(35);
    fill(255);
    text("Press the pacman to start!", 75, height/6, width-10, 100);

    start.appear();
    start.click();
   }
  
 void gameScreen(){
  background (0);

  myPlayer.move();
  myPlayer.boundaries();
  myPlayer.turn();
  
   for (int i = 0; i<4; i++){
   myGhosts[i].appear();
   myGhosts[i].move();
   myGhosts[i].boundaries();
     if (dist(myPlayer.xPos, myPlayer.yPos, myGhosts[i].xPos, myGhosts[i].yPos)<20){
   println("out");
   screen = 2;
     }
   }
//println(myDots.size());
   for (int i = 0; i<myDots.size(); i++){
     Dot d = myDots.get(i);
     d.appear();
     if (dist(myPlayer.xPos, myPlayer.yPos, d.xPos, d.yPos)<23.5){
       println("collision");
       
       myDots.remove(i);
       
       if (myDots.size() == 0){    
         screen = 3;
       }  
     } 
   }   
}



  void endScreen(){
    background(0);
    textSize(30);
    fill(255);
    text("You're out. Click Pacman to play again!", 25, height/6, width-25, 100);
  
    start.appear();
    start.click();
    
  }
  
    void winScreen(){
    background(0);
    textSize(30);
    fill(255);
    text("You Win!. Click Pacman to play again!", 25, height/6, width-25, 100);
  
    fill(0, 200, 0);
    start.appear();
    start.click();  
  }
  
  //make a maze and put everything in the maze?
  
