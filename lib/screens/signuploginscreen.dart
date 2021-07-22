// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int _pageState = 0;
  var _backgroundcolor = Colors.white;
  var _headingcolor = Colors.redAccent;

  // ignore: prefer_final_fields
  //double _loginWidth = 0.0;
  // ignore: unused_field
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
        _backgroundcolor = Colors.white;
        _headingcolor = Colors.amberAccent;

        _loginYoffset = windowheight;
        _registerYoffset = windowheight;
        break;
      case 1:
        _headingcolor = Colors.cyanAccent;
        _backgroundcolor = Colors.redAccent;

        _loginYoffset = 270;
        _registerYoffset = windowheight;
        break;
      case 2:
        _headingcolor = Colors.cyanAccent;
        _backgroundcolor = Colors.redAccent;

        _loginYoffset = 270;
        _registerYoffset = 270;
        break;
      default:
    }
    return Stack(
      children: [
        //animation + tagline
        // ignore: duplicate_ignore, duplicate_ignore
        AnimatedContainer(
          curve: Curves.fastLinearToSlowEaseIn,
          duration: const Duration(
            milliseconds: 1000,
          ),
          color: _backgroundcolor,
          // ignore: duplicate_ignore, duplicate_ignore
          child: GestureDetector(
            onTap: () {
              _pageState = 0;
            },
            // ignore: avoid_unnecessary_containers
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
                      ],
                    ),
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Image.asset("assets/images/gym.png"),
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
                    child: Container(
                      margin: const EdgeInsets.all(32),
                      padding: const EdgeInsets.all(22),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Center(
                          child: Text(
                        "Get Started",
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      )),
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
              milliseconds: 1000,
            ),
            transform: Matrix4.translationValues(0, _loginYoffset, 1),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
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
                  children: [
                    InputwithIcon(Icons.email, "email"),
                    const SizedBox(height: 20),
                    InputwithIcon(Icons.password, "password"),
                    const SizedBox(height: 80),
                    PrimaryButton(txt: "Register"),
                    const SizedBox(height: 15),
                    OutlineButton(
                      txt: "Back to Login",
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
              milliseconds: 1000,
            ),
            transform: Matrix4.translationValues(0, _registerYoffset, 1),
            decoration: const BoxDecoration(
                color: Colors.white,
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
                          "Login to continue",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
                Column(
                  children: [
                    InputwithIcon(Icons.email, "email"),
                    const SizedBox(height: 20),
                    InputwithIcon(Icons.password, "password"),
                    const SizedBox(height: 80),
                    PrimaryButton(txt: "Login"),
                    const SizedBox(height: 15),
                    OutlineButton(
                      txt: "Register",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class PrimaryButton extends StatefulWidget {
  String txt;

  // ignore: use_key_in_widget_constructors
  PrimaryButton({required this.txt});

  @override
  _PrimaryButtonState createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.all(20),
      child: Center(
          child: Text(
        widget.txt,
        style: const TextStyle(color: Colors.white, fontSize: 20),
      )),
    );
  }
}

// ignore: must_be_immutable
class OutlineButton extends StatefulWidget {
  String txt;

  // ignore: use_key_in_widget_constructors
  OutlineButton({required this.txt});

  @override
  _OutlineButtonState createState() => _OutlineButtonState();
}

class _OutlineButtonState extends State<OutlineButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.brown,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.all(20),
      child: Center(
          child: Text(
        widget.txt,
        style: const TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.w700),
        
      )),
    );
  }
}

class InputwithIcon extends StatefulWidget {
  final IconData icon;
  final String hint;
  const InputwithIcon(this.icon, this.hint, {Key? key}) : super(key: key);

  @override
  _InputwithIconState createState() => _InputwithIconState();
}

class _InputwithIconState extends State<InputwithIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        children: [
          // ignore: sized_box_for_whitespace
          Container(
            width: 60,
            child: Icon(widget.icon, size: 20),
          ),
          Expanded(
            child: Container(
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 20),
                    border: InputBorder.none,
                    hintText: widget.hint),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
