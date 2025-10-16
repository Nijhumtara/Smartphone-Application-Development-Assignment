void evenNumbers(int a, int b){
  for(int i = a; i <= b; i++){
    if(i%2 == 0){
      print(i);
    }
  }
}

void main(){
  evenNumbers(1, 10);
}