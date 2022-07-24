import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:login_sigin_auth/signup_page.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold (
      backgroundColor: Colors.white70,
      body: Column(
        children: [
          Container(
            width: w,
            height: h*0.3,
            decoration: const BoxDecoration(
             image: DecorationImage(
               image: AssetImage(
                   "img/bags.jpg"
               ),
               fit: BoxFit.cover
             ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20) ,
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Hello",
                style: TextStyle(
                  fontSize: 70.0,
                  fontWeight: FontWeight.bold,
                ),
                ),
                Text("Sign into your account",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.brown[500],
                  ),
                ),
                SizedBox(height: 50,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 7,
                        offset: Offset(1, 1),
                        color: Colors.brown.withOpacity(0.2)
                      )
                    ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      prefixIcon: Icon(Icons.email, color: Colors.amber,),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white70,
                          width: 1.0
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                            color: Colors.white70,
                            width: 1.0
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(1, 1),
                            color: Colors.brown.withOpacity(0.2)
                        )
                      ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(Icons.password_outlined, color: Colors.amber,),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                            color: Colors.white70,
                            width: 1.0
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                            color: Colors.white70,
                            width: 1.0
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: Container(),),
                    Text("Forgot your Password?",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.brown[500],
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
          SizedBox(height: 70,),
          Container(
            width: w*0.5,
            height: h*0.08,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  image: AssetImage(
                      "img/bag3.jpg"
                  ),
                  fit: BoxFit.cover
              ),
            ),
            child: Center(
              child: Text("Sign in",
                style: TextStyle(
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightGreen[500],
                ),
              ),
            ),
          ),
          SizedBox(height: w*0.09),
          RichText(
              text: TextSpan(
            text: "Don't have an account?",
            style: TextStyle(
              color: Colors.brown[500],
              fontSize: 20,
            ),
            children: [
                  TextSpan(
                  text: " Create",
                  style: TextStyle(
                    color: Colors.brown[1500],
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                    recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>SignUp())
                  ),
            ]
          ))
        ],
      ),
    );
  }
}
