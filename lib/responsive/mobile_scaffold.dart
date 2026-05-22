import 'package:flutter/material.dart';
import 'package:responsiveui/components/my_drawer.dart';
import 'package:responsiveui/theme/color_constants.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: appbarColor,
        iconTheme: IconThemeData(color: backgroundColor),
      ),
      drawer: MyDrawer(),
    );
  }
}
