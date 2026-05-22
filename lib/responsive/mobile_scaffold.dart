import 'package:flutter/material.dart';
import 'package:responsiveui/components/my_box.dart';
import 'package:responsiveui/components/my_drawer.dart';
import 'package:responsiveui/components/my_tile.dart';
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
      body: Column(
        children: [
          //4 boxes on the top
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return MyBox();
                },
              ),
            ),
          ),

          //tiles below it
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return MyTile();
              },
            ),
          ),
        ],
      ),
    );
  }
}
