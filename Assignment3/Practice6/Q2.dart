class House{
  int? id;
  String? name;
  double? price;
  
  House(this.id, this.name, this.price);

  void display(){
    print("ID: $id, Name: $name, & Price: $price");
  }
}
void main(){
  House h1 = House(1, "Luxury Villa", 25000000);
  House h2 = House(2, "Family House", 9500000);
  House h3 = House(3, "Small Cottage", 4500000);

  List houses = [h1, h2, h3];

  for(var house in houses){
    house.display();
  }
  
}