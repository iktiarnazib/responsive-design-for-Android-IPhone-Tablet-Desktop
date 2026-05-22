import 'package:flutter/material.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        iconTheme: IconThemeData(color: Colors.grey[300]),
      ),

      backgroundColor: Colors.grey[300],
      drawer: Drawer(
        backgroundColor: Colors.grey[300],
        child: Column(
          children: [
            //drawer header
            DrawerHeader(child: Icon(Icons.favorite, size: 60)),
            //dashboard
            ListTile(
              leading: Icon(Icons.home),
              title: Text('D A S H B O A R D'),
            ),
            //message
            ListTile(leading: Icon(Icons.chat), title: Text('M E S S A G E')),
            //settings
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('S E T T I N G S'),
            ),
            ListTile(leading: Icon(Icons.logout), title: Text('L O G O U T')),
          ],
        ),
      ),
    );
  }
}
