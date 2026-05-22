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
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        iconTheme: IconThemeData(color: Colors.grey[300]),
      ),

      backgroundColor: ColorConstants().backgroundColor,
      drawer: MyDrawer(),
    );
  }
}
