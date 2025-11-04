import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
