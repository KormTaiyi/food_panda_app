import 'package:flutter/material.dart';
import 'package:food_panda_clone/pages/location_page.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  final String signupImg = "assets/signup_img.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF2B85),
      appBar: AppBar(
        backgroundColor: Color(0xFFFF2B85),
        leading: TextButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LocationPage()),
            );
          },
          child: Icon(
            Icons.arrow_back_ios_sharp,
            size: 22,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Center(child: Image.asset(signupImg, width: 400, fit: BoxFit.cover)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Sign up or Log in",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text("Select yur preferred method to continue"),
              SizedBox(height: 20),
              ElevatedButton(onPressed: (){}, child: Text("data"))
            ],
          ),
        ],
      ),
    );
  }
}
