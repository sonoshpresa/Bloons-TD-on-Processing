PopUp pMenu;
PopUp pSconfitta;

int s = 0;
int vite = 200;
int soldi = 100;
int round = 1;

PImage cuore;
PImage soldo;
PImage dartBloon;

int costoBui1 = 75;
BuyUI Bui1;

ArrayList <Bloon> torretteInGioco;

Path corsia;
Palloncino p;

void setup() {

  fullScreen();
  rectMode(CENTER);
  textAlign(CENTER);
  imageMode(CENTER);
  ellipseMode(CENTER);

  pMenu = new PopUp(width/2, height/2, width-250, height-100, "Benvenuti a Bloons TD 8!", "GIOCA");
  pSconfitta = new PopUp(width/2, height/2, width-250, height-100, "Hai perso! Sarai più fortunato", "RIPROVA");

  cuore = loadImage("cuore.png");
  soldo = loadImage("soldo.png");
  dartBloon = loadImage("dart_scimmia.png");

  Bui1 = new BuyUI(width-150, height/4-20, dartBloon, costoBui1, "1");

  torretteInGioco = new ArrayList <Bloon>();
  
  corsia = new Path();
  p = new Palloncino(corsia.xn.get(0), corsia.yn.get(0));
  corsia.palloncini.add(p);
  
}

void draw() {

  background(0, 102, 0);

  if (s == 0) { // Menù iniziale
    pMenu.show();
    if (pMenu.bottone.isCliccato()) {
      s = 1;
    }
  }

  if (s == 1) { // Gameplay
    fill(204, 102, 0);
    rect(width-150, height/2, 300, height);
    Bui1.update();
    textSize(20);
    fill(255);
    text("VITE: "+vite, 70, 30);
    text("SOLDI: "+soldi, 75, 50);
    image(cuore, 18, 22, 30, 30);
    image(soldo, 18, 44, 45, 45);

    updateTorrette();
    //controlloScoppio();
    corsia.show();
    p.update();
    if (vite <= 0) {
      s = 2;
    }
  }

  if (s == 2) { // Menù sconfitta
    pSconfitta.show();
    if (pSconfitta.bottone.isCliccato()) {
      vite = 200;
      soldi = 100;
      s = 1;
    }
  }
}

void keyPressed() {
  if (key == 'v' || key == 'V') {
    vite-=50;
  }
  if (key == '1') {
    if (mouseX < width-(170*2) && soldi >= costoBui1) {
      torretteInGioco.add(new Bloon(mouseX, mouseY));
      soldi -= costoBui1;
    }
  }
}

void updateTorrette() {
  for (int i=0; i<torretteInGioco.size(); i++) {
    torretteInGioco.get(i).update();
  }
}
/*
void controlloScoppio(){
  for(int i=0; i<torretteInGioco.size(); i++){
    if(dist(torretteInGioco.get(i).x, torretteInGioco.get(i).y, p.x, p.y) <= (torretteInGioco.get(i).raggioAzione+p.hitbox/2)/2){
      soldi += p.guadagno;
    }
  }
}*/
