// ignore_for_file: unused_field, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:back_button_interceptor/back_button_interceptor.dart';
import '../widgets/buttonstextpwd.dart';
import '../main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int _pageState = 0;
  var _backgroundcolor = Colors.black;
  var _headingcolor = Colors.black;

  String _headingtext = "not set";

  // ignore: prefer_final_fields
  double _loginWidth = 0.0;
  double _loginHeight = 0.0;

  double windowwidth = 0.0;
  double windowheight = 0.0;

  // double _loginXoffset = 0.0;
  double _loginYoffset = 0.0;
  double _registerYoffset = 0.0;

  bool checkedValue = true;
  @override
  void initState() {
    BackButtonInterceptor.add(myInterceptor);
    super.initState();
  }

  @override
  void dispose() {
    BackButtonInterceptor.remove(myInterceptor);
    super.dispose();
  }

  bool myInterceptor(bool stopDefaultButtonEvent, RouteInfo info) {
    Navigator.of(context).pop(false);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const MyHomePage(
          title: "WTF Home",
        ),
      ),
    ); // Do some stuff.
    return true;
  }

  @override
  Widget build(BuildContext context) {
    windowwidth = MediaQuery.of(context).size.width;
    windowheight = MediaQuery.of(context).size.height;

    _loginHeight = windowheight - 120;

    switch (_pageState) {
      case 0:
        _backgroundcolor = Colors.black;
        _headingcolor = Color(0xFFf90f01);
        _headingtext = " ";
        _loginYoffset = windowheight;
        _registerYoffset = windowheight;
        break;

      case 1:
        _headingcolor = Colors.black;
        _backgroundcolor = Color(0xFFf90f01);
        _headingtext = "Sign Up";
        _loginYoffset = 120;
        _registerYoffset = windowheight;
        break;

      case 2:
        _headingcolor = Colors.black;
        _backgroundcolor = Color(0xFFf90f01);
        _headingtext = "Sign In";
        _loginYoffset = 120;
        _registerYoffset = 120;
        break;

      default:
    }
    return Scaffold(
      body: Stack(
        children: [
          
          //animation + tagline
          //pagestate = 0;
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
              child: Stack(
                children: [
                  // ignore: sized_box_for_whitespace
                  Container(
                  height: double.infinity,
                  width: double.infinity,
                  // margin: const EdgeInsets.only(top: 210,left: 20),
                  child: Image.asset(
                    "assets/images/splashscreen.png",
                    fit: BoxFit.cover,
                    height: double.infinity,
                    width: double.infinity,
                  ),
                ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              // Container
                              //   // heading
                              //     // color: _headingcolor 
                              //     margin: const EdgeInsets.only(top: 50),
                              //     child: Text(
                              //       _headingtext,
                              //       style: TextStyle(
                              //         color: Color(0xFFf90f01),
                              //         fontSize: 28,
                              //         fontFamily: 'Work_Sans',
                              //       ),
                              //     )),
                                  Container(
                                    alignment:Alignment.topLeft,
                                    
                                // heading
                                  // color: _headingcolor 
                                  margin: const EdgeInsets.only(top: 170, left: 50),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Hello",
                                          style: TextStyle(
                                            color: Color(0xFFFFFFFF),
                                            fontSize: 28,
                                            fontFamily: 'Work_Sans',
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Welcome to WTF, Let\' get fit",
                                          style: TextStyle(
                                            color: Color(0xFFFFFFFF),
                                            fontSize: 28,
                                            fontFamily: 'Work_Sans',
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                        Container(
                            child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _pageState = 2;
                                });
                              },
                              child: Container(
                                  margin: const EdgeInsets.fromLTRB(18, 8, 18, 10),
                                  child: PrimaryButton(txt: "Sign In")),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _pageState = 1;
                                });
                              },
                              child: Container(
                                  margin: const EdgeInsets.fromLTRB(18, 8, 18, 10),
                                  child: PrimaryButton(txt: "Sign Up")),
                            ),
                         
                          ],
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // pagestate = 1
          GestureDetector(
            onTap: () {
              setState(() {
                _pageState = 0;
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
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(bottom: 10.0),
                          child: const Text(
                            "Register",
                            style: TextStyle(
                                fontFamily: 'Work_Sans',
                                color: Color(0xFFf90f01),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      const SizedBox(height: 10),
                      FacebookButton(txt: "Sign up with Facebook"),
                      const SizedBox(height: 15),
                      TwitterButton(txt: "Sign up with Twitter"),
                      const SizedBox(height: 15),
                      GoogleButton(txt: "Sign up with Google"),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Text(
                          "Or",
                          style: const TextStyle(
                              fontFamily: 'Work_Sans',
                              color: Colors.white,
                              fontSize: 20),
                        ),
                      ),
                      // Divider(color: Colors.black,),
                      InputwithIcon(Icons.email, "email"),
                      const SizedBox(height: 14),
                      PasswordInputwithIcon(Icons.password, "password"),
                      const SizedBox(height: 14),
                      PasswordInputwithIcon(Icons.password, "confirm password"),
                      const SizedBox(height: 14),
                      CheckboxListTile(
                        title:
                            Text("I agreed to Terms and Conditions Agreement",
                                style: TextStyle(
                                  fontFamily: 'Work_Sans',
                                  color: Colors.white,
                                )),
                        value: true, //checkedValue,
                        onChanged: (newValue) {
                          setState(() {
                            if (checkedValue == true) {
                              checkedValue = false;
                            } else {
                              checkedValue = true;
                            }
                          });
                        },
                        controlAffinity: ListTileControlAffinity
                            .leading, //  <-- leading Checkbox
                      ),

                      const SizedBox(height: 25),
                      PrimaryButton(txt: "Sign Up"),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an Account ?",
                            style: TextStyle(
                                fontFamily: 'Work_Sans',
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            "Sign In qq",
                            style: TextStyle(
                                fontFamily: 'Work_Sans',
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // page state = 2
          GestureDetector(
            onTap: () {
              setState(() {
                _pageState = 0;
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
                  color: Colors.black,
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
                                fontFamily: 'Work_Sans',
                                color: Color(0xFFf90f01),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
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
                        child: Text(
                          "Or",
                          style: const TextStyle(
                              fontFamily: 'Work_Sans',
                              color: Colors.white,
                              fontSize: 20),
                        ),
                      ),
                      // Divider(color: Colors.black,),
                      InputwithIcon(Icons.email, "email"),
                      const SizedBox(height: 20),
                      InputwithIcon(Icons.password, "password"),
                      const SizedBox(height: 20),
                      Text(
                        "Forgot password",
                        style: TextStyle(
                            fontFamily: 'Work_Sans',
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
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
