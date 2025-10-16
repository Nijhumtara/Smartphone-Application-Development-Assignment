void main(){
  Map<String, dynamic> person = {
    'Name': "John",
    'Address': "Sylhet",
    'Age': 20,
    'Country': "Bangladesh"
  };

  person['Country'] = "Canada";

  person.forEach((key, value){
    print("Key: $key & Value: $value");
  });
}