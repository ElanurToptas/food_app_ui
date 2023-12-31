import 'package:flutter/material.dart';
import 'package:food_app_ui/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    // SizeConfig().init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Food UI Kit",

      home: HomeScreen(),
    );
  }
}
