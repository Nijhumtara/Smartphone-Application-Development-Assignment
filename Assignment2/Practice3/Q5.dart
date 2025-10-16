import 'dart:io';
import 'dart:math';
double circle(double r){
  double area = pi*r*r;
  return area;
}

void main(){
  stdout.write("Enter the radius of the circle: ");
  double r = double.parse(stdin.readLineSync()!);
  double areaCircle = circle(r);

  print("Area of the circle = ${areaCircle.toStringAsFixed(2)}");
}