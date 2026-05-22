import 'package:flutter/material.dart';
import 'package:responsiveui/responsive/desktop_scaffold.dart';
import 'package:responsiveui/responsive/mobile_scaffold.dart';
import 'package:responsiveui/responsive/responsive_layout.dart';
import 'package:responsiveui/responsive/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: const MobileScaffold(),
        tabletScaffold: const TabletScaffold(),
        desktopScaffold: const DesktopScaffold(),
      ),
    );
  }
}
