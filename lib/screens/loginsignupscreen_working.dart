
// ignore_for_file: unused_field, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import '../widgets/buttonstextpwd.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int _pageState = 0;
  var _backgroundcolor = Colors.black;
  var _headingcolor = Colors.redAccent;

  // ignore: prefer_final_fields
  double _loginWidth = 0.0;
  double _loginHeight = 0.0;

  double windowwidth = 0.0;
  double windowheight = 0.0;

  // double _loginXoffset = 0.0;
  double _loginYoffset = 0.0;
  double _registerYoffset = 0.0;

  @override
  void initState() {
    super.initState();
 
  }

  @override
  Widget build(BuildContext context) {
    windowwidth = MediaQuery.of(context).size.width;
    windowheight = MediaQuery.of(context).size.height;

    _loginHeight = windowheight - 270;

    switch (_pageState) {
      case 0:
        _backgroundcolor = Colors.black;
        _headingcolor = Colors.redAccent;

        _loginYoffset = windowheight;
        _registerYoffset = windowheight;
        break;


      case 1:
        _headingcolor = Colors.redAccent;
        _backgroundcolor = Colors.black;

        _loginYoffset = 270;
        _registerYoffset = windowheight;
        break;


      case 2:
        _headingcolor = Colors.blueAccent;
        _backgroundcolor = Colors.black;

        _loginYoffset = 270;
        _registerYoffset = 270;
        break;


      default:
    }
    return Scaffold(
      body: Stack(
        children: [
          //animation + tagline
          AnimatedContainer(
            curve: Curves.fastLinearToSlowEaseIn,
            duration: const Duration(
              milliseconds: 4000,
            ),
            color: _backgroundcolor,
            child: GestureDetector(
              onTap: () {
                _pageState = 0;
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                              color: _headingcolor,
                              margin: const EdgeInsets.only(top: 100),
                              child: const Text(
                                "wtf animation ",
                                style: TextStyle(
                                    color: Colors.redAccent, fontSize: 22),
                              )),
                          Text(
                            "Witness the Fitness",
                            style: TextStyle(color: _headingcolor, fontSize: 22),
                          ),
                          AnimatedContainer(
                            curve: Curves.easeIn,
                            duration: const Duration(
                              milliseconds: 3000,
                            ),
                            color: _backgroundcolor,
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 32),
                              child: Image.asset(
                                "assets/images/gym.png",
                                width: 300,
                                height: 350,
                                alignment: Alignment.bottomCenter,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        child: GestureDetector(
                      onTap: () {
                        setState(() {
                          if (_pageState == 0) {
                            _pageState = 1;
                          } else {
                            _pageState = 0;
                          }
                        });
                      },
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                                left: 32, right: 32, top: 10, bottom: 10),
                            padding: const EdgeInsets.all(10),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueGrey),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.red.shade900,
                                  Colors.redAccent.shade200,
                                ],
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 11,
                                  blurRadius: 8,
                                  offset:
                                      Offset(1, 2), // changes position of shadow
                                ),
                              ],
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Center(
                                child: Text(
                              "Sign In",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                                left: 32, right: 32, top: 18, bottom: 10),
                            padding: const EdgeInsets.all(10),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueAccent),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.black45,
                                  Colors.red,
                                ],
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 11,
                                  blurRadius: 8,
                                  offset:
                                      Offset(1, 2), // changes position of shadow
                                ),
                              ],
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Center(
                                child: Text(
                              "Sign Out",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        ],
                      ),
                    )),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _pageState = 2;
              });
            },
            child: AnimatedContainer(
              padding: const EdgeInsets.all(20),
              //width: _loginWidth,
              //height: _loginHeight,
              curve: Curves.fastLinearToSlowEaseIn,
              duration: const Duration(
                milliseconds: 3000,
              ),
              transform: Matrix4.translationValues(0, _loginYoffset, 1),
              decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(bottom: 20.0),
                          child: const Text(
                            "Register",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                  Column(
                    children: [ const SizedBox(height: 20),
                      FacebookButton(txt: "Sign up with Facebook"),
                      const SizedBox(height: 20),
                      TwitterButton(txt: "Sign up with Twitter"),
                      const SizedBox(height: 20),
                      GoogleButton(txt: "Sign up with Google"),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text("Or",style: const TextStyle(color: Colors.white, fontSize: 20),),
                      ),
                     // Divider(color: Colors.black,),
                      InputwithIcon(Icons.email, "email"),
                      const SizedBox(height: 20),
                      PasswordInputwithIcon(Icons.password, "password"),
                      const SizedBox(height: 20),
                      PasswordInputwithIcon(Icons.password, "confirm password"),
                      const SizedBox(height: 20),
                      Text("I agreed to Terms and Conditions Agreement", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),),
                      const SizedBox(height: 50),
                      PrimaryButton(txt: "Sign Up"),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an Account ?", style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),),
                          Text("Sign Up", style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _pageState = 1;
              });
            },
            child: AnimatedContainer(
              padding: const EdgeInsets.all(20),
              curve: Curves.fastLinearToSlowEaseIn,
              duration: const Duration(
                milliseconds: 4000,
              ),
              transform: Matrix4.translationValues(0, _registerYoffset, 1),
              decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          child: const Text(
                            "Login to Continue",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      const SizedBox(height: 20),
                      FacebookButton(txt: "Sign In with Facebook"),
                      const SizedBox(height: 20),
                      TwitterButton(txt: "Sign In with Twitter"),
                      const SizedBox(height: 20),
                      GoogleButton(txt: "Sign In with Google"),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text("Or",style: const TextStyle(color: Colors.white, fontSize: 20),),
                      ),
                     // Divider(color: Colors.black,),
                      InputwithIcon(Icons.email, "email"),
                      const SizedBox(height: 20),
                      InputwithIcon(Icons.password, "password"),
                      const SizedBox(height: 20),
                      Text("Forgot password", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),),
                      const SizedBox(height: 50),
                      PrimaryButton(txt: "Sign In"),
                      const SizedBox(height: 20),
                       
                    ],
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
 