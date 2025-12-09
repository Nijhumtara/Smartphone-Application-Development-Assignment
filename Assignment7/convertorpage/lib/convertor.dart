import 'package:flutter/material.dart';

class ConvertorPage extends StatefulWidget {
  const ConvertorPage({super.key});

  @override
  State<StatefulWidget> createState() => _ConvertorPageState();
}

class _ConvertorPageState extends State {
  TextEditingController nameController = TextEditingController();
  String name = "";
  String? error = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 122, 216, 250),
        foregroundColor: Colors.black,
        title: Text("Convertor Page"),
        actions: [
          Icon(Icons.login),
          SizedBox(width: 10),
          Text("Login"),
          Padding(padding: EdgeInsets.only(right: 20)),
        ],
      ),
      body: Center(
        child: SizedBox(
          height: 300,
          width: 300,
          child: Card(
            color: const Color.fromARGB(255, 0, 33, 59),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: nameController,
                    keyboardType: TextInputType.name,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      errorText: error, errorStyle: TextStyle(
                        color: Colors.red,
                      ),
                      prefixIconColor: Colors.white,
                      hintText: "Enter Name",
                      hintStyle: TextStyle(color: Colors.white),
                      labelText: "Name",
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(Icons.person),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.white, // 👉 Border color when focused
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
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      padding: EdgeInsets.all(20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text("Submit"),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Name is $name",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
