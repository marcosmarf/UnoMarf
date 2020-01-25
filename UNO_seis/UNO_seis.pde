ArrayList<Carta> cartas = new ArrayList<Carta>();
int instc = 0;
int instn = 0;
int c;
int n;
int SC;
int SN;
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
    n = int(random(0, 13));
    c = int(random(0, 4));
    String  ss ="";
    if (n == 0) {
      ss = "0";
    }
    if (n == 1) {
      ss = "1";
    }
    if (n == 2) {
      ss = "2";
    }
    if (n == 3) {
      ss = "3";
    }
    if (n == 4) {
      ss = "4";
    }
    if (n == 5) {
      ss = "5";
    }
    if (n == 6) {
      ss = "6";
    }
    if (n == 7) {
      ss = "7";
    }
    if (n==8){
    ss="8";
    }
    if (n==9){
    ss="9";
    }
    if(n==10){
    ss="2p";
    }
    if(n==11){
    ss="bloq";
    }
   if(n==12){
   ss="cambio";  
   }
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

    C1 = new Carta (c, n, loadImage(s=s+ss+".png"));
    cartas.add(C1);
    
    
     nn = int(random(0, 11));
    cc = int(random(0, 4));
    
    String  ss3 ="";
    if (nn == 0) {
      ss3 = "0";
    }
    if (nn == 1) {
      ss3 = "1";
    }
    if (nn == 2) {
      ss3 = "2";
    }
    if (nn== 3) {
      ss3 = "3";
    }
    if (nn == 4) {
      ss3 = "4";
    }
    if (nn == 5) {
      ss3 = "5";
    }
    if (nn == 6) {
      ss3 = "6";
    }
    if (nn == 7) {
      ss3 = "7";
    }
    if (nn == 8){
    ss3 = "8";
    }
    if (nn == 9){
    ss3="9";
    }
    if(nn == 10){
    ss3="2p";
    }
        if(nn==11){
    ss3="bloq";
    }
   if(nn==12){
   ss3="cambio";  
   }

    String  ss2 ="";
    if (cc == 0) {
      ss2 = "azul";
    }
    if (cc == 1) {
      ss2 = "rojo";
    }
    if (cc == 2) {
      ss2 = "verde";
    }
    if (cc == 3) {
      ss2 = "amarillo";
    }

    C2 = new Carta (cc, nn, loadImage(ss2=ss2+ss3+".png"));
    cartas.add(C2);
    
  
  }
}
    
void remplazarcarta(int cc, int nn) {
  String ss3 ="";
   if (nn == 0) {
    ss3 = "0";
  }
  if (nn == 1) {
    ss3 = "1";
  }
  if (nn == 2) {
    ss3 = "2";
  }
  if (nn == 3) {
    ss3 = "3";
  }
  if (nn == 4){
  ss3 = "4";
  }
  if (nn == 5) {
    ss3 = "5";
  }
  if (nn == 6) {
    ss3 = "6";
  }
  if (nn == 7) {
    ss3 = "7";
  }
  if (nn == 8) {
    ss3 = "8";
  }
  if (nn == 9){
  ss3 = "9";
  }
  if (nn == 10){
  ss3 = "2p";
  }
      if(nn==11){
    ss3="bloq";
    }
   if(nn==12){
   ss3="cambio";  
   }
  
  String ss2 = "";
  if (cc == 0) {
    ss2 = "azul";
  }
  if (cc == 1) {
    ss2 = "rojo";
  }
  if (cc == 2) {
    ss2 = "verde";
  }
  if (cc == 3) {
    ss2 = "amarillo";
  }
  C2 = new Carta (cc, nn, loadImage(ss2=ss2+ss3+".png"));
  cartas.add(C2);
}
void addCarta() {
  n1 = int(random(0, 13));
  c1 = int(random(0, 4));
      String sb= "";
      
      if(n1==0){
      sb = "0";
    }
    if (n1 == 1) {
      sb = "1";
    }
    if (n1 == 2) {
      sb = "2";
    }
    if (n1== 3) {
      sb = "3";
    }
    if (n1 == 4) {
      sb = "4";
    }
    if (n1 == 5) {
      sb = "5";
    }
    if (n1 == 6) {
      sb = "6";
    }
    if (n1 == 7) {
      sb = "7";
    }
    if (n1 == 8){
    sb = "8";
    }
    if (n1 == 9){
    sb="9";
    }
    if(n1 == 10){
    sb="2p";
    }
        if(n1==11){
    sb="bloq";
    }
   if(n1==12){
   sb="cambio";  
   }
    
  String  sa ="";
  if (c1 == 0) {
    sa = "azul";
  }
  if (c1 == 1) {
    sa = "rojo";
  }
  if (c1 == 2) {
    sa = "verde";
  }
  if (c1 == 3) {
    sa = "amarillo";
  }

  C1 = new Carta (c1, n1, loadImage(sa=sa+sb+".png"));
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
