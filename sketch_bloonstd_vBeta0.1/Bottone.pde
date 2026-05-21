public class Bottone {

  // ATTRIBUTI
  float x;
  float y;
  float dimX;
  float dimY;
  color col;
  String testo;

  // COSTRUTTORI
  public Bottone(float x_in, float y_in, float dX, float dY, String t) {
    this.x = x_in;
    this.y = y_in;
    this.dimX = dX;
    this.dimY = dY;
    this.col = color(0, 255, 0);
    this.testo = t;
  }

  // METODI
  void update() {
    this.show();
  }

  void show() {
    fill(this.col);
    rect(this.x, this.y, this.dimX, this.dimY);
    fill(255);
    textSize(50);
    text(this.testo, this.x, this.y+(this.dimY/5));
  }

  boolean isCliccato() {
    if (mousePressed && ((this.x-this.dimX/2)) < mouseX && mouseX < (this.x+this.dimX/2) && (this.y-this.dimY/2) < mouseY && mouseY < (this.y+this.dimY/2)) {
      return true;
    } else {
      return false;
    }
  }
}
