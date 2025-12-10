import 'package:flutter/material.dart';

class ConvertorPage extends StatefulWidget {
  const ConvertorPage({super.key});

  @override
  State<StatefulWidget> createState() => _ConvertorPageState();
}

class _ConvertorPageState extends State {
  bool isTextVisible = false;
  TextEditingController nameController = TextEditingController();
  String name = "";
  String? error = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 2, 31, 35),
        foregroundColor: Colors.white,
        title: Text("Weather Application"),
        actions: [
          Icon(Icons.home),
          SizedBox(width: 10),
          Text("Home"),
          Padding(padding: EdgeInsets.only(right: 15)),
          Icon(Icons.login),
          SizedBox(width: 10),
          Text("Login"),
          Padding(padding: EdgeInsets.only(right: 20)),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Asset/Images/weather_back.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 50),
              TextFormField(
                controller: nameController,
                keyboardType: TextInputType.name,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  errorText: error,
                  errorStyle: TextStyle(color: Colors.red),
                  prefixIconColor: Colors.black,
                  hintText: "Enter City Name: ",
                  hintStyle: TextStyle(color: Colors.black),
                  labelText: "City",
                  labelStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(Icons.person),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.black, // 👉 Border color when focused
                      width: 2,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    error = null;
                    if (nameController.text.isEmpty) {
                      error = "Field is Empty";
                    }
                    name = nameController.text;
                    isTextVisible = true;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text("Click"),
              ),
              SizedBox(height: 40),
              Visibility(
                visible: isTextVisible,
                child: SizedBox(
                  width: 400,
                  height: 200,
                  child: Text(
                    "25\u00B0C\nThursday\n$name, Bangladesh",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
