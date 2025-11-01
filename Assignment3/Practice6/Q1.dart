class Leptop{
  int? id;
  String? name;
  String? ram;
  Leptop(int id, String name, String ram){
    this.id = id;
    this.name = name;
    this.ram = ram;
  }
}
void main(){
  Leptop obj1 = Leptop(123, "HP", "128GB");
  print("ID: ${obj1.id}, Name: ${obj1.name}, & Ram: ${obj1.ram}");
  Leptop obj2 = Leptop(456, "Apple", "256GB");
  print("ID: ${obj2.id}, Name: ${obj2.name}, & Ram: ${obj2.ram}");
  Leptop obj3 = Leptop(789, "Dell", "64GB");
  print("ID: ${obj3.id}, Name: ${obj3.name}, & Ram: ${obj3.ram}");
}