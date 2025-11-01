class Animal{
  int? id;
  String? name;
  String? color;

  Animal(this.id, this.name, this.color);
}
class Cat extends Animal {
  String? sound;

  Cat(int id, String name, String color, this.sound) : super(id, name, color);

  void display() {
    print("Animal ID: $id, Animal Name: $name, Animal Color: $color, Cat Sound: $sound");
  }
}
void main(){
  Cat obj = Cat(1, "Cat", "White","Meow");
  obj.display();
}