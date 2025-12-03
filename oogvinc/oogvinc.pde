boolean gameOver = false;
boolean gameStart = true;
boolean win = false;
int timer = 0;
Player you;
ArrayList<Obsticle> balls;
float tempX=0;
float tempY=0;
int gameOverTimer;


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
    //stops the player from instantly exiting the ending screen
    gameOverTimer++;
    
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

    //every few seconds spawns new obstacles
    if (timer % 180 == 0) {
      //makes 2 new instances
      balls.add(new Obsticle());
      balls.add(new Obsticle());
      //starts them
      Obsticle new1 = balls.get(balls.size()-1);
      new1.begin();
      Obsticle new2 = balls.get(balls.size()-2);
      new2.begin();
    }
    //scans for any instances that have passed the end of the line
    for (int i = 0; i < balls.size(); i++) {
      Obsticle whatever = balls.get(i);
      if ( whatever.finished()==true) {
        balls.remove(i);
      }
    }
    //scanning if any balls hit us, or if we crossed the finish line
    didWeHitSomthing();
   


    //shows all current balls
    for (int i = 0; i < balls.size(); i++) {
      Obsticle whatever = balls.get(i);
      whatever.show();
    }


    timer++;
  }
}

void endScreen() {
  //clears balls and resets the spawning timer
  balls.clear();
  timer=0;

  if (win ==false) {
    background(255, 0, 0);//red
    fill(0);
    text("Game Over", width/2, height/2);
  } else {
    background(0, 255, 0);//green
    fill(0);
    text("You Win!", width/2, height/2);

    //resetting back to the loss state is handled in keyPressed()
  }
}
void didWeHitSomthing() {
  //getting the player's position
  tempX=you.where(true);
  tempY=you.where(false);
  //checking if the player crossed the finish line
  if (tempX>=1000) {
    win=true;
    gameOver=true;
  } else
  //asks each existing ball if they hit the player
  for (int i = 0; i < balls.size(); i++) {
    Obsticle agressor = balls.get(i);
    agressor.didIGetHim(tempX, tempY);
  }
}

void keyPressed() {
  //restarts the game if on game over/won screen
  if (gameOver==true && gameOverTimer>=60) {
    //resetting back to default values
    gameOver = false;
    win = false;
    gameStart=true;
    gameOverTimer=0;
    //setting these so it doesn't instantly end again
    tempX=0;
    tempY=0;
  }
  //movement controlls with arrow keys
    else if (keyCode==UP) {
    you.move(1);
  } else if (keyCode==DOWN) {
    you.move(2);
  } else if (keyCode==LEFT) {
    you.move(3);
  } else if (keyCode==RIGHT) {
    you.move(4);
  }
}
