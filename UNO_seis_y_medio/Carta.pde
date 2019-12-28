class Carta {
  int colorito;
  int numero;
  PImage foto;
  int x1;
  int y1;
  String s;  
  Carta(int colorito, int numero, PImage foto) {

    this.colorito = colorito;
    this.numero = numero;
    this.foto = foto;
  }
  void display(int x, int y) {
    this.x1 = x;
    this.y1 = y;
    image(foto, x, y, 100, 100);
    image(foto, width/2-50, height/2-50, 100, 100);

  }
}
