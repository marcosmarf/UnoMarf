ArrayList<Carta> cartas = new ArrayList<Carta>();
int instc = 0;
int instn = 0;
int c;
int n;
int c1;
int n1;
int cc;
int nn;
int posc;
int cuancard = 7;
int val = 0;
String ss;
boolean CoN = false;
Carta C1;
Carta C2;
void setup() {
  size(700, 700);
  for (int i = 0; i < cuancard; i++) {
    n = int(random(0, 10));
    c = int(random(0, 4));

    String  s ="";
    if (c == 0) {
      s = "azul";
    }
    if (c == 1) {
      s = "rojo";
    }
    if (c == 2) {
      s = "verde";
    }
    if (c == 3) {
      s = "amarillo";
    }

    C1 = new Carta (c, n, loadImage(s=s+n+".png"));
    cartas.add(C1);
  }
  nn = int(random(0, 10));
  cc = int(random(0, 4));
  ss ="";
  if (cc == 0) {
    ss = "azul";
  }
  if (cc == 1) {
    ss = "rojo";
  }
  if (cc == 2) {
    ss = "verde";
  }
  if (cc == 3) {
    ss = "amarillo";
  }
  C2 = new Carta (cc, nn, loadImage(ss=ss+nn+".png"));
}
void remplazarcarta(int cc1, int nn1) {
  String ss1 ="";
  if (cc1 == 0) {
    ss1 = "azul";
  }
  if (cc1 == 1) {
    ss1 = "rojo";
  }
  if (cc1 == 2) {
    ss1 = "verde";
  }
  if (cc1 == 3) {
    ss1 = "amarillo";
  }
  C2 = new Carta (cc1, nn1, loadImage(ss1=ss1+nn1+".png"));
}
void addCarta() {
  n1 = int(random(0, 10));
  c1 = int(random(0, 4));

  String  s1 ="";
  if (c1 == 0) {
    s1 = "azul";
  }
  if (c1 == 1) {
    s1 = "rojo";
  }
  if (c1 == 2) {
    s1 = "verde";
  }
  if (c1 == 3) {
    s1 = "amarillo";
  }

  C1 = new Carta (c1, n1, loadImage(s1=s1+n1+".png"));
  cartas.add(C1);
}

void draw() {
  background(255);
  fill(255, 0, 0);
  rect(0, 100, 100, 100);
  
  for (int i=0; i < cartas.size(); i++) {
    Carta j = cartas.get(i);
    if (cuancard+val != 0) {
      posc = width/(cuancard+val)*i;
    }
    j.display(posc, 0);
  }

  image(C2.foto, width/2-50, height/2-50, 100, 100);
}
void mousePressed() {

  for (int i = 0; i < cuancard+val; i++) {
    if (cartas.get(i).colorito == cc|| cartas.get(i).numero == nn) {
      CoN = true;
    } else {
      CoN = false;
    }
    if (mouseX >= cartas.get(i).x1 && mouseX<= cartas.get(i).x1+100 && mouseY >= cartas.get(i).y1 && mouseY <= cartas.get(i).y1+100 && CoN == true) {
      println(0);
      remplazarcarta(cartas.get(i).colorito, cartas.get(i).numero);
      cc = cartas.get(i).colorito;
      nn = cartas.get(i).numero;
      cartas.remove(i);
      if (cc == 0) {
        ss = "azul";
      }
      if (cc == 1) {
        ss = "rojo";
      }
      if (cc == 2) {
        ss = "verde";
      }
      if (cc == 3) {
        ss = "amarillo";
      }
      val--;
    }
  }
  if (mouseX >= 0 && mouseX <= 100 && mouseY >= 100 && mouseY <= 200) {
    val++;
    addCarta();
  }
}
