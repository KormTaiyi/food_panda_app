import 'package:flutter/material.dart';
import 'package:food_panda_clone/pages/location_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LocationPage()),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xFFFF2B85));
  }
}
