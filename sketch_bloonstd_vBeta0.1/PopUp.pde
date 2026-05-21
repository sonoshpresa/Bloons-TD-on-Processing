public class PopUp {

  // ATTRIBUTI
  float x;
  float y;
  float dimX;
  float dimY;
  color col;
  String testo;
  String testoBottone;
  Bottone bottone;

  // COSTRUTTORI
  public PopUp(float x_in, float y_in, float dX, float dY, String t, String tB) {
    this.x = x_in;
    this.y = y_in;
    this.dimX = dX;
    this.dimY = dY;
    this.col = color(204, 102, 0);
    this.testo = t;
    this.testoBottone = tB;
    bottone = new Bottone(this.x, this.y, 500, 100, this.testoBottone);
  }

  // METODI
  void show() {
    fill(this.col);
    rect(this.x, this.y, this.dimX, this.dimY);
    fill(255);
    textSize(100);
    text(this.testo, this.x, this.y-100);
    bottone.update();
  }
}
