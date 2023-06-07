import 'package:flutter/material.dart';

class assignment extends StatelessWidget {
  const assignment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: activity(),
    );
  }
}

class activity extends StatelessWidget {
  const activity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('MyApp'),
      ),
      
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          elevation: 0,
          onPressed: (){}
      ),
      
      bottomNavigationBar: BottomNavigationBar(
          items:[
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.message),label: 'Chat'),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Setting'),
          ]
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child:
            Text('Navigation Drawer'),
              padding: EdgeInsets.symmetric(vertical:70,horizontal: 75),
              //margin: EdgeInsets.symmetric(vertical:10,horizontal: 15),
              decoration: BoxDecoration(color: Colors.blueGrey),
            ),
            ListTile(
              title: Text('Profile'),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text('About'),
              leading: Icon(Icons.info),
            ),
          ],
        ),
      ),
    );
  }
}

