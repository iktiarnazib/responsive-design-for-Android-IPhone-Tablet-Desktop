import 'package:flutter/material.dart';
import 'package:responsiveui/components/my_box.dart';
import 'package:responsiveui/components/my_drawer.dart';
import 'package:responsiveui/components/my_tile.dart';
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
          Expanded(
            flex: 2,
            child: Column(
              children: [
                //4 boxes on the top
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
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
                  flex: 2,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return MyTile();
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Expanded(child: Container(color: Colors.pink)),
          ),
        ],
      ),
    );
  }
}
