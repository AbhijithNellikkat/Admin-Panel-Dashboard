import 'package:dashboard/constants.dart';
import 'package:dashboard/widget_tree.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Admin Panel Dashboard',
      theme: ThemeData(
        drawerTheme: const DrawerThemeData(backgroundColor: Constants.purpleDark),
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Constants.purpleDark,
        canvasColor: Constants.purpleLight,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: WidgetTree(),
    );
  }
}
