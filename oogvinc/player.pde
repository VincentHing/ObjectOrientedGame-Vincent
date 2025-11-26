
class Player {
  PVector position = new PVector();


  Player() {
    position.x=140;
    position.y=200;
  }
  void show() {
    fill(0,0,255);
    ellipse(position.x,position.y,50,50);
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
