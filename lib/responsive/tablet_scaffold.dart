import 'package:flutter/material.dart';
import 'package:responsiveui/components/my_box.dart';
import 'package:responsiveui/components/my_drawer.dart';
import 'package:responsiveui/components/my_tile.dart';
import 'package:responsiveui/theme/color_constants.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: appbarColor,
        iconTheme: IconThemeData(color: backgroundColor),
      ),
      drawer: MyDrawer(),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Column(
            children: [
              // 4 boxes
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: constraints.maxHeight * 0.4,
                ),
                child: AspectRatio(
                  aspectRatio: 4,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                    ),
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return MyBox();
                    },
                  ),
                ),
              ),

              // Tiles
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return MyTile();
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
