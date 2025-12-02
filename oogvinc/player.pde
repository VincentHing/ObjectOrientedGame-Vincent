
class Player {
  PVector position = new PVector();
  PImage goober;

  Player() {
    //preparing funny image
    goober = loadImage("goofyGuy.png");
    goober.resize(50, 50);
    imageMode(CENTER);
    //funny image ready

    //starting position
    position.x=140;
    position.y=200;
  }
  void begin() {
    position.x=140;
    position.y=200;
  }


  void show() {
    //funny image deployed
    image(goober, position.x, position.y);
  }

  void move(int direction) {
    if (direction==1) {
      //move up
    }
    if (direction==2) {
      //move down
    }
    if (direction==3) {
      //move left
    }
    if (direction==4) {
      //move right
    }
  }
}
