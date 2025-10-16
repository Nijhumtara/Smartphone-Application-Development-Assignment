void main(){
  Map<String, dynamic> person = {
    'Name': "John",
    'Phone': 9123567
  };

  List<String> keys = person.keys.where((key) => key.length == 4).toList();
  print(keys);
}