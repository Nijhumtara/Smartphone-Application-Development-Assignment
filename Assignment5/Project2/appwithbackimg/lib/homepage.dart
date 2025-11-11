import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 248, 174, 198),
        foregroundColor: Colors.black,
        title: Row(
          children: [
            Text("Home Page"),
          ],
        ),
        actions: [
          Text("Setting"),
          Padding(padding: EdgeInsets.only(right: 5)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          Padding(padding: EdgeInsets.only(right: 20)),
          Text("Log Out"),
          Padding(padding: EdgeInsets.only(right: 5)),
          IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
          Padding(padding: EdgeInsets.only(right: 20)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(top: 20)),
             Text(
              "Welcome to the landing page",
              style: GoogleFonts.lobster(
                textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Image.asset(
              'Assets/Images/nature.jpeg',
              height: 500,
              width: double.infinity,
              fit: BoxFit.contain,
            ),
            Image.network("https://static.vecteezy.com/system/resources/thumbnails/049/139/500/small/serene-rainforest-scene-with-lush-green-foliage-and-gentle-rainfall-natural-background-for-relaxation-photo.jpg"),
          ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: const Color.fromARGB(255, 237, 157, 220),
        foregroundColor: Colors.black,
        child: Icon(Icons.add),
      ),
      drawer: NavigationDrawer(children: [
        DrawerHeader(
          child: UserAccountsDrawerHeader(
            accountName: Text("Nazma Begum"), 
            accountEmail: Text("nazma123@gmail.com"),
          ),
        ),
        ListTile(
          onTap: (){},
          leading: Icon(Icons.home),
          title: Text("Home"),
        ),
        ListTile(
          onTap: (){},
          leading: Icon(Icons.person),
          title: Text("Profile"),
        ),
        ListTile(
          onTap: (){},
          leading: Icon(Icons.contact_emergency),
          title: Text("Contact"),
        ),
      ]),
    );
  }
}
