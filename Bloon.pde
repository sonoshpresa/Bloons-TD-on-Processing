public class Bloon {

  // ATTRIBUTI
  float x;
  float y;
  float r;
  color col;
  float raggioAzione;

  // COSTRUTTORI
  public Bloon(float x_in, float y_in) {
    this.x = x_in;
    this.y = y_in;
    this.r = 80;
    this.col = color(128, 64, 32);
    this.raggioAzione = 380;
  }

  // METODI
  void update() {
    this.show();
  }

  void show() {
    fill(this.col);
    strokeWeight(2.5);
    circle(this.x, this.y, this.r);
    fill(0, 0, 0, 50);
    circle(this.x, this.y, this.raggioAzione);
  }
}
