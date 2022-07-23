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
      backgroundColor: Colors.white70,
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
          ),
          SizedBox(height: 70,),

        ],
      ),
    );
  }
}
