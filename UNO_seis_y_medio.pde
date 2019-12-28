ArrayList<Carta> cartas = new ArrayList<Carta>();
int c;
int n;
int cc;
int nn;
int posc;
boolean CoN;
Carta c1;
Carta c2;
Carta[] cp;
void setup() {
  size(700, 700);

  for (int i = 0; i < 7; i++) {
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

    c1 = new Carta (c, n, loadImage(s=s+n+".png"));
    cartas.add(c1);
  }  
  nn = int(random(0, 10));
  cc = int(random(0, 4));
  String  ss ="";
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
  c2 = new Carta (cc, nn, loadImage(ss=ss+nn+".png"));
  cartas.add(c2);
}
void draw() {
  for (int i=0; i < cartas.size(); i++) {
    Carta j = cartas.get(i);
    posc = i*100;
    j.display(posc, 0);
  }
  
 // cartas[0]
  
  
}
void mousePressed() {
//for(){
   if (mouseX >= cartas.get(0).x1 && mouseX<= cartas.get(0).x1+100 && mouseY >= cartas.get(0).y1 && mouseY <= cartas.get(0).y1+100 && cartas.get) {
    println(posc);
  }
}
//}
