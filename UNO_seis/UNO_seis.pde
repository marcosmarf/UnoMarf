
ArrayList<Carta> cartas = new ArrayList<Carta>();
int instc = 0;
int instn = 0;
int c;
int n;
int cc;
int nn;
int posc;
int ordenar_cartas;
String ss;
boolean CoN = false;
Carta c1;
Carta c2;
void setup() {
  size(700, 700);

  for (int i = 0; i < 7; i++) {
    n = int(random(0, 10));
    c = int(random(0, 4));
    ordenar_cartas = 6 +1;

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
  

      nn ++;
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
      c2 = new Carta (cc, nn, loadImage(ss=ss+nn+".png"));


}
void draw() {



  for (int i=0; i < cartas.size(); i++) {
    Carta j = cartas.get(i);
    posc = width/ordenar_cartas*i;
    j.display(posc, 0);
  }
   
  image(c2.foto,width/2-50,height/2-50,100,100);
}
void mousePressed() {
  for (int i = 0; i < 7; i++) {
    if (cartas.get(i).colorito == cc|| cartas.get(i).numero == nn) {
      CoN = true;
    } else {
      CoN = false;
    }
    if (mouseX >= cartas.get(i).x1 && mouseX<= cartas.get(i).x1+100 && mouseY >= cartas.get(i).y1 && mouseY <= cartas.get(i).y1+100 && CoN == true) {
      println(0);
       cartas.remove(i);
       ordenar_cartas --;
       int cart_c = cartas.get(i).colorito;
       int cart_n = cartas.get(i).numero;
       String cart_s = "";
       if (cartas.get(i).colorito == 0) {
        cart_s = "azul";
      }
      if (cartas.get(i).colorito == 1) {
        cart_s = "rojo";
      }
      if (cartas.get(i).colorito == 2) {
        cart_s = "verde";
      }
      if (cartas.get(i).colorito == 3) {
        cart_s = "amarillo";
      }
       
       c2 = new Carta (cart_c,cart_n, loadImage(cart_s=cart_s+cart_n+".png"));
      
     
    } else {
      println(1);
    }
  }
}
