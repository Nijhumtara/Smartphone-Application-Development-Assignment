int maxNumber(int a, int b, int c){
  if(a > b && a > c){
    return a;
  }
  else if(b > a && b > c){
    return b;
  }
  else{
    return c;
  }
}

void main(){
  int maximumValue = maxNumber(24, 31, 15);
  print("Maximum Value = $maximumValue");
}