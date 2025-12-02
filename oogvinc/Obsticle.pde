
class Obsticle {
  PVector position = new PVector();
  // holds what line the thing will spawn on
  int lineN;

  Obsticle() {
    position.x=1000;
    position.y=99999999;//not used initial value, should never be seen
  }
  void begin() {
    //gives a random int back
    lineN = int(random(3));
    // random int decides what line this obsticle will spawn on
    if (lineN==0) position.y = 100;
    if (lineN==1) position.y = 200;
    if (lineN==2) position.y = 300;
  }

  void show() {

    fill(255, 0, 0);
    ellipse(position.x, position.y, 50, 50);
    position.x--;
  }
  boolean finished () {
    if (position.x<120) return true;
    else {
      return false;
    }
  }
}
