
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
    //sets it back to the start
    position.x=140;
    position.y=200;
  }


  void show() {
    //funny image deployed
    image(goober, position.x, position.y);
  }

  void move(int direction) {
    if (direction==1) {
      //move up unless on top line
      if (position.y>100) position.y-=100;
    }
    if (direction==2) {
      //move down unless on bottom line
      if (position.y<300) position.y+=100;
    }
    if (direction==3) {
      //move left unless at end of line
      if (position.x>=140) position.x-=3;
    }
    if (direction==4) {
      //move right unless gonna exit finish line
      if (position.x<=1200) position.x+=3;
    }
  }
  float where (boolean XorY){
    
  if (XorY==true) return position.x;
  else return position.y;
  }
  
}
