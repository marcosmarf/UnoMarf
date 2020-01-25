class SCards {
  int SColor;
  int SNum;
  PImage fotico;
  int x1;
  int y1;
  String s; 

  SCards(int SColor, PImage fotico) {

    this.SColor = SColor;
    this.fotico = fotico;
   
  }
  void display(int Sx, int Sy) {
    this.x1 = Sx;
    this.y1 = Sy;
    image(fotico, Sx, Sy, 100, 100);
  }
}
