boolean gameover = false;
boolean gameStart = true;
boolean win = false;
Player you;

void setup() {
  size(1200, 400);
  rectMode(CORNERS);
  ellipseMode(CENTER);
  textAlign(CENTER);
  textSize(104);
  you = new Player();
}
void draw() {
  if (gameover==true) {
    endScreen();
  } else {
    //block that sets the game to the initial settings
    if (gameStart==true) {
      //Player.begin();
      gameStart=false;
    }
    background(255);
    //the lines the game objects move on
    line(100, 100, 1000, 100);
    line(100, 200, 1000, 200);
    line(100, 300, 1000, 300);
    fill(0, 255, 0);
    //the finish line
    rect(1000, 0, 1200, 400);
    you.show();
  }
}

void endScreen() {
  if (win ==false) {
    background(255, 0, 0);//red
    text("Game Over", width/2, height/2);
  } else {
    background(0, 255, 0);//green
    text("You Win!", width/2, height/2);
    //resetting back to the loss state is handled in keyPressed()
  }
}
