import 'dart:io';
void main(){
  double totalAmounts = 0;
  stdout.write("Enter the size of the list: ");
  int n = int.parse(stdin.readLineSync()!);

  List<double> amounts = List.filled(n, 0);
  stdout.write("Enter expenses amount: ");
  for(int i = 0; i < n; i++){
    amounts[i] = double.parse(stdin.readLineSync()!);
    totalAmounts += amounts[i];
  }

  print("Total Expenses Amount = $totalAmounts");

}