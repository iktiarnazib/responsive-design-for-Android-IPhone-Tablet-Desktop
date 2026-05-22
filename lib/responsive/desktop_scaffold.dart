import 'package:flutter/material.dart';
import 'package:responsiveui/components/my_drawer.dart';
import 'package:responsiveui/theme/color_constants.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: appbarColor,
        iconTheme: IconThemeData(color: backgroundColor),
      ),
      body: Row(
        children: [
          //opened drawer
          MyDrawer(),

          //rest of the things
        ],
      ),
    );
  }
}
