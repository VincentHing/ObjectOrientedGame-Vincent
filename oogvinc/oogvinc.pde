boolean gameOver = false;
boolean gameStart = true;
boolean win = false;
Player you;
ArrayList<Obsticle> balls;

void setup() {
  size(1200, 400);
  rectMode(CORNERS);
  ellipseMode(CENTER);
  textAlign(CENTER);
  textSize(104);
  you = new Player();
  balls = new ArrayList<Obsticle>();
}

void draw() {
  if (gameOver==true) {
    endScreen();
  } else {
    //block that sets the game to the initial settings
    if (gameStart==true) {
      you.begin();
      gameStart=false;
    }
    background(255);
    //the lines the game objects move on
    line(100, 100, 1000, 100);
    line(100, 200, 1000, 200);
    line(100, 300, 1000, 300);
    //the finish line
    fill(0, 255, 0);
    rect(1000, 0, 1200, 400);
    
    //shows the player
    you.show();
    
    //                      for(int n = 
    //somthing that adds 2 to arraylist every few seconds
    
    //shows all current balls
    for (int i = 0; i < balls.size(); i++){
   Obsticle guy = balls.get(i);
      guy.show();
    
    }
    
    
  }
}

void endScreen() {
  
  balls.clear();

  if (win ==false) {

    background(255, 0, 0);//red
    text("Game Over", width/2, height/2);
  } else {
    background(0, 255, 0);//green
    text("You Win!", width/2, height/2);

    //resetting back to the loss state is handled in keyPressed()
  }
}

void keyPressed() {
  //restarts the game if on game over/won screen
  if (gameOver==true) {
    gameOver = false;
    win = false;
  } else if (keyCode==UP) {
    you.move(1);
  } else if (keyCode==DOWN) {
    you.move(2);
  } else if (keyCode==LEFT) {
    you.move(3);
  } else if (keyCode==RIGHT) {
    you.move(4);
  }
}
