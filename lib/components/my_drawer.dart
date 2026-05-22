import 'package:flutter/material.dart';
import 'package:responsiveui/theme/color_constants.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: backgroundColor,
      child: SingleChildScrollView(
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
