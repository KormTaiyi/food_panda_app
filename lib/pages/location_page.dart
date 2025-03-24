import 'package:flutter/material.dart';
import 'package:food_panda_clone/pages/signup_page.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  final String locationImg = "assets/homepage_gif.gif";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset(locationImg, width: 400)),
                Text(
                  "Allow location access on the next screen for:",
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  // softWrap: true,
                  // overflow: TextOverflow.visible,
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.electric_bike_outlined,
                        size: 30,
                        color: Colors.black,
                      ),
                      style: ElevatedButton.styleFrom(
                        disabledBackgroundColor: const Color.fromARGB(
                          255,
                          235,
                          234,
                          234,
                        ),
                      ),
                    ),
                    SizedBox(width: 30),
                    Expanded(
                      child: Text(
                        "Finding the best resturants and shops near you.",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.visible,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.store_mall_directory_outlined,
                        size: 30,
                        color: Colors.black,
                      ),
                      style: ElevatedButton.styleFrom(
                        disabledBackgroundColor: const Color.fromARGB(
                          255,
                          235,
                          234,
                          234,
                        ),
                      ),
                    ),
                    SizedBox(width: 30),
                    Expanded(
                      child: Text(
                        "Faster and more accurate delivery",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Divider(),
                SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFF2B85),
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => SignupPage()),
                    );
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
