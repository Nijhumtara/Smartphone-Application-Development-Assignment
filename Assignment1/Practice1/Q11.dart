void main(){
  String amounts = "100, 350, 485, 645";
  List<String>eachAmount = amounts.split(",");
  double total_bill_amount = 0;

  for(int i = 0; i < eachAmount.length; i++){
    total_bill_amount += double.parse(eachAmount[i]);
  }

  int no_of_people = 5;
  double split_amount_of_bill = total_bill_amount/no_of_people;

  print("Total Bill = $split_amount_of_bill");
}