public class Path {
  FloatList xn;
  FloatList yn;
  float frames = 200;
  float cx;
  float cx2;
  float cy;
  float cy2;
  ArrayList<Palloncino> palloncini;
  float delta1;
  float delta2;
  float delta3;
  float delta4;
  float delta5;
  float delta6;
  float a = 0;
  float lT;
  public Path() {
    this.xn = new FloatList();
    this.yn = new FloatList();
    palloncini = new ArrayList<Palloncino>();
    this.create();
  }

  void create() {
    this.xn.append(0);
    this.yn.append(height/4);
    this.xn.append(width/4*3);
    this.yn.append(height/4);
    this.xn.append((width/4)*3);
    this.yn.append(height/2);
    this.xn.append(width/16);
    this.yn.append(height/4*3);
    this.xn.append((width/4)*3);
    this.yn.append((height/4)*3.5);
    this.xn.append((width/4*3.5));
    this.yn.append(height);
    this.delta1 = this.xn.get(0)-this.xn.get(1);
    if (this.delta1<0)this.delta1*=-1;
    this.delta2 = this.xn.get(1)-this.xn.get(2);
    if (this.delta2<0)this.delta2*=-1;
    this.delta3 = this.xn.get(2)-this.xn.get(3);
    if (this.delta3<0)this.delta3*=-1;
  }
  void show() {
    noFill();
    beginShape();
    curveVertex(xn.get(0), yn.get(0));
    curveVertex(xn.get(0), yn.get(0)); //0.30
    curveVertex(xn.get(1), yn.get(1)); //600.300
    curveVertex(xn.get(2), yn.get(2));
    curveVertex(xn.get(3), yn.get(3));
    curveVertex(xn.get(4), yn.get(4));
    curveVertex(xn.get(5), yn.get(5));
    curveVertex(xn.get(4), yn.get(5));
    //curveVertex(xn.get(2), yn.get(2));
    endShape();
    float t = (frameCount % frames) / frames;
    if (t<this.lT) a++;

    if (t < 1 && a == 0) {
      cx = curvePoint(xn.get(0), xn.get(0), xn.get(1), xn.get(2), t);
      cy = curvePoint(yn.get(0), yn.get(0), yn.get(1), yn.get(2), t);
      println(t);
    }
    //if (t  1 && a == 0) a ++;
    if (t <1 && a == 1) {
      cx = curvePoint(xn.get(0), xn.get(1), xn.get(2), xn.get(3), t);
      cy = curvePoint(yn.get(0), yn.get(1), yn.get(2), yn.get(3), t);
      println("ciao2");
    }
    //if (t > 1 && a == 1) a++;
    if (a == 2) {
      cx = curvePoint(xn.get(1), xn.get(2), xn.get(3), xn.get(4), t);
      cy = curvePoint(yn.get(1), yn.get(2), yn.get(3), yn.get(4), t);
      println(t);
    }if (a == 3) {
      cx = curvePoint(xn.get(2), xn.get(3), xn.get(4), xn.get(5), t);
      cy = curvePoint(yn.get(2), yn.get(3), yn.get(4), yn.get(5), t);
      println(t);
    }
    if (a == 4) {
      cx = curvePoint(xn.get(3), xn.get(4), xn.get(5), xn.get(4), t);
      cy = curvePoint(yn.get(3), yn.get(4), yn.get(5), yn.get(5), t);
      println(t);
    }

    // Disegna l'oggetto
    fill(0, 0, 255);
    this.palloncini.get(0).x = cx;
    this.palloncini.get(0).y = cy;
    fill(255, 0, 0);
    //ellipse(cx2, cy2, 15, 15);
    //println(t);
    this.lT = t;
  }
}
