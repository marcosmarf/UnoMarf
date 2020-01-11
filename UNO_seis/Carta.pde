class Carta {
  int colorito;
  int numero;
  PImage foto;
  int x1;
  int y1;
  String s; 
  boolean mano;
  Carta(int colorito, int numero, PImage foto,boolean mano) {

    this.colorito = colorito;
    this.numero = numero;
    this.foto = foto;
    this.mano = mano;
  }
  void display(int x, int y) {
    this.x1 = x;
    this.y1 = y;
    if(mano == true){
    image(foto, x, y, 100, 100);
    }else{
      
    image(foto,width/2-50,height/2-50,100,100);
    }
  }
}
