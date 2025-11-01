class Camera{
  int? __id;
  String? __brand;
  String? __color;
  double? __price;
  
  set idName(int id) => this.__id = id;
  set brandName(String brand) => this.__brand = brand;
  set colorName(String color) => this.__color = color;
  set priceName(double price) => this.__price = price;

  int get getId => this.__id!;
  String get getBrand => this.__brand!;
  String get getColor => this.__color!;
  double get getPrice => this.__price!;
}
void main(){
  Camera c = Camera();
  c.idName = 1;
  c.brandName = "Leica";
  c.colorName = "Pink";
  c.priceName = 25000000;

  print("Camera ID: ${c.getId}, Brand: ${c.getBrand}, Color: ${c.getColor}, & Price: ${c.getPrice}");
}