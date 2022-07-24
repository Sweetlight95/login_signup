import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {


  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: w,
            height: h*0.3,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      "img/bag7.jpg"
                  ),
                  fit: BoxFit.cover
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: h*0.18),
                CircleAvatar(
                  radius: 48,
                  backgroundImage: AssetImage(
                      "img/bag6.jpg"
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 70,),
          Container(
            width: w,
            margin: const EdgeInsets.only(left: 20 ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(
                    color: Colors.limeAccent[400],
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "princess@gmail.com",
                  style: TextStyle(
                    color: Colors.deepPurpleAccent,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 150,),
          Container(
            width: w*0.5,
            height: h*0.08,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  image: AssetImage(
                      "img/ga.webp"
                  ),
                  fit: BoxFit.cover
              ),
            ),
            child: Center(
              child: Text(
                "Log out",
                style: TextStyle(
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.lime,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
