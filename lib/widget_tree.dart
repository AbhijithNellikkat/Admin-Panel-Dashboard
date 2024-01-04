import 'package:dashboard/pages/drawer/drawer.dart';
import 'package:dashboard/responsive_layout.dart';
import 'package:flutter/material.dart';

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 90),
        child: (ResponsiveLayout.isTinyLimit(context) ||
                ResponsiveLayout.isTinyHeightLimit(context)
            ? Container()
            : AppBar()),
      ),
      body: ResponsiveLayout(
        tiny: Container(),
        phone: Container(),
        tablet: Container(),
        largeTablet: Container(),
        computer: Container(),
      ),
      drawer: const DrawerPage(),
    );
  }
}
