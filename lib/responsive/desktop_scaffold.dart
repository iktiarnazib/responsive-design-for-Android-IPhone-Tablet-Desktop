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
          // Opened drawer
          MyDrawer(),

          // Rest of the things
          Expanded(
            flex: 2,
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Column(
                  children: [
                    // 4 boxes on top
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight:
                            constraints.maxHeight *
                            0.4, // never exceed 40% of column height
                      ),
                      child: AspectRatio(
                        aspectRatio: 4,
                        child: SizedBox(
                          width: double.infinity,
                          child: GridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                ),
                            itemCount: 4,
                            itemBuilder: (BuildContext context, int index) {
                              return MyBox();
                            },
                          ),
                        ),
                      ),
                    ),

                    // Tiles below
                    Expanded(
                      child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return MyTile();
                        },
                      ),
                    ),
                  ],
                );
              },
            ),
          ),

          // Right pink panel
          Expanded(child: Container(color: Colors.pink)),
        ],
      ),
    );
  }
}
