ArrayList<Carta> cartas = new ArrayList<Carta>();
int c;
int n;
int cc;
int nn;
int posc;
boolean CoN = false;
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
}
void mousePressed() {
for(int i = 0; i <= 7; i++){
  if(cartas.get(i).colorito == cc|| cartas.get(i).numero == nn){
  CoN = true;
  }
  else{
  CoN = false;
  }
   if (mouseX >= cartas.get(i).x1 && mouseX<= cartas.get(i).x1+100 && mouseY >= cartas.get(i).y1 && mouseY <= cartas.get(i).y1+100 && CoN == true) {
   nn = cartas.get(i).colorito;
   cc = cartas.get(i).numero;
  }
}
}
