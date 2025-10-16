void createUser(String name, int age, [bool isActive = true]){
  print('User name: $name\nUser age: $age\nisActive: $isActive');
}
void main(){
  createUser("Nazma" , 22);
}