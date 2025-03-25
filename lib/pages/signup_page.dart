import 'package:flutter/material.dart';
import 'package:food_panda_clone/pages/location_page.dart';
import 'package:food_panda_clone/pages/main_page.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  final String signupImg = "assets/homepage_img.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFF2B85),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF2B85),
        leading: TextButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LocationPage()),
            );
          },
          child: const Icon(
            Icons.arrow_back_ios_sharp,
            size: 22,
            color: Colors.black,
          ),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                child: Center(
                  child: Image.asset(
                    signupImg,
                    width: 400,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
          Positioned.fill(
            top: MediaQuery.of(context).size.height / 4.1,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  const Text(
                    "Sign up or Log in",
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                  ),
                  const Text("Select your preferred method to continue"),
                  const SizedBox(height: 40),
                  TextButton(
                    onPressed: () {},

                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.grey),
                      ),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.g_mobiledata_outlined,
                          size: 50,
                          color: Color.fromARGB(255, 66, 64, 64),
                        ),
                        const SizedBox(width: 30),
                        const Text(
                          "Continue with Google",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 102, 101, 101),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 60),
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.facebook_outlined,
                          size: 40,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 30),
                        const Text(
                          "Continue with Facebook",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 3),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Divider(color: Colors.grey, thickness: 1),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "or",
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      ),
                      Expanded(
                        child: Divider(color: Colors.grey, thickness: 1),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => MainPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 60),
                      backgroundColor: const Color(0xFFFF2B85),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.mail_outline,
                          size: 30,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 50),
                        const Text(
                          "Continue with Email",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Center(
                    child: Text(
                      "Log in with phone number",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Text.rich(
                    TextSpan(
                      text: 'By continuing, you agree to our',
                      style: TextStyle(fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Terms and Conditions',
                          style: TextStyle(
                            fontSize: 14,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(text: ' and ', style: TextStyle(fontSize: 16)),
                        TextSpan(
                          text: 'Privacy Polocy',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
