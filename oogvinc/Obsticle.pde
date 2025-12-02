
class Obsticle {
  PVector position = new PVector();
  int lineN;

  Obsticle() {
    position.x=1000;
    position.y=200;
  }
  void begin(){
    //gives a random int back
    lineN = int(random(3));
    
    // random int decides what line this obsticle will spawn on
    if (lineN==0) position.y = 100;
    if (lineN==1) position.y = 200;
    if (lineN==2) position.y = 300;
  
  }
  void show() {
    fill(255,0,0);
    ellipse(position.x,position.y,50,50);
    position.x++;
  }
}
