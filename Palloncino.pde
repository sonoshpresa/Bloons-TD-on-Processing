public class Palloncino {

  // ATTRIBUTI
  float x;
  float y;
  float dimX;
  float dimY;
  color col;
  int guadagno;
  float hitbox;
  float vx;

  // COSTRUTTORI
  public Palloncino(float x_in, float y_in) {
    this.x = x_in;
    this.y = y_in;
    this.dimX = 65;
    this.dimY = 80;
    this.col = color(255, 0, 0);
    this.guadagno = 10;
    this.hitbox = 65;
    this.vx = 2;
  }

  // METODI
  void update() {
    //this.seguiMouse();
    //this.move();
    this.show();
  }

  void show() {
    fill(this.col);
    push();
    strokeWeight(2);
    ellipse(this.x, this.y, this.dimX, this.dimY);
    fill(0);
    line(this.x, this.y+this.dimY/2, this.x, this.y+this.dimY/2+30);
    pop();
    fill(255);
    ellipse(this.x-20, this.y-12, 10, 20);
    fill(0, 0, 0, 128);
    circle(this.x, this.y, this.hitbox);
  }
  
  void seguiMouse(){
    this.x = mouseX;
    this.y = mouseY;
  }
  
  void move(){
    this.x += this.vx;
  }
}
