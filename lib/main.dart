import 'package:flutter/material.dart';
import 'package:food_panda_clone/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashPage(), debugShowCheckedModeBanner: false);
  }
}
