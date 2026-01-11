import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Whatsapp'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        centerTitle: true,

        actions: [
          Icon(Icons.search),
          PopupMenuButton(
            itemBuilder: (context) {
              return [PopupMenuItem(value: 'clicked', child: Text('One')),PopupMenuItem(value: 'clicked', child: Text('two'))];
            },
          ),
        ],

        actionsIconTheme: IconThemeData(color: Colors.white),
      ),

      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Shoaib'),
              accountEmail: Text('shoaib@gmail.com'),

              currentAccountPicture: CircleAvatar(child: Icon(Icons.person)),
            ),

            ListTile(
              leading: Icon(Icons.mail),
              title: Text('inbox'),
              onTap: () {
                print('Inbox clicked');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
                print('Setting Clicked');
              },
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            // 🔵 Banner
            Container(
              height: 450,
              width: 1000, // optional, can remove if you want
              color: Colors.blue,
            ),

            // 🟡 Product Section
            Container(height: 400, width: 1000, color: Colors.amber),

            // 🟢 Another Section
            Container(height: 100, width: 1000, color: Colors.green),
          ],
        ),
      ),
    );
  }
}
