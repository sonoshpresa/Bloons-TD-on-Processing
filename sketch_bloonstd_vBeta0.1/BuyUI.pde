public class BuyUI {

  // ATTRIBUTI
  float x;
  float y;
  float dim;
  PImage foto;
  int costo;
  String nTasto;

  // COSTRUTTORI
  public BuyUI(float x_in, float y_in, PImage f, int c, String n) {
    this.x = x_in;
    this.y = y_in;
    this.dim = 250;
    this.foto = f;
    this.costo = c;
    this.nTasto = n;
  }

  // METODI
  void update() {
    this.show();
  }

  void show() {
    fill(128, 76, 0);
    strokeWeight(1);
    rect(this.x, this.y, this.dim, this.dim);
    image(this.foto, this.x, this.y, this.dim, this.dim);
    fill(255);
    textSize(50);
    text(this.costo, this.x+10, this.y+this.dim/2-5);
    fill(0);
    text(this.nTasto, this.x+this.dim/2-20, this.y-this.dim/2+40);
    image(soldo, this.x-50, this.y+this.dim/2-19, 70, 70);
  }
}
