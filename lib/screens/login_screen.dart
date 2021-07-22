import 'package:flutter/material.dart';
import 'package:back_button_interceptor/back_button_interceptor.dart';
import '../main.dart';

class CustomHalfCircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    // path.lineTo(0, size.height / 2);

    // path.lineTo(size.width, size.height /2);
    // path.lineTo(size.width, 0);
    // path.moveTo(0, 0 );

    path.lineTo(0, size.height / 2);

    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width, 0);
    path.moveTo(0, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _username = TextEditingController();
  final _password = TextEditingController();

  final bool _validateuser = false;
  final bool _validatepassword = false;
  bool _showPassword = false;

  //later delete once fed from api
  String msg = '';
  String username = "test";
  String password = "password";

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
              builder: (context) => const MyHomePage( title: "WTF Home",
                
              ),
            ),
          );// Do some stuff.
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xfffa0709),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/wtf1.png",
                  // Image.asset("assets/images/wtf1.png",
                  width: MediaQuery.of(context).size.width,   //750,
                  height: 250),
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(8, 200, 0, 100),
                    width: 650,
                    height: 650,
                    //child: Icon(CustomIcons.option, size: 20,),
                    decoration: const BoxDecoration(
                      color: Colors.black54,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    //margin: EdgeInsets.all(20.0),
                    margin: const EdgeInsets.fromLTRB(36, 230, 50, 50),
                    width: 600,
                    height: 600,
                    //child: Icon(CustomIcons.option, size: 20,),
                    decoration: const BoxDecoration(
                      color: Color(0xfffa0709),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text("Welcome Back ! ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28.0,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 100),
                        child: Text("Sign into your account",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          color: const Color(0xFF0C0009),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(48, 10, 48, 10),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(0, 12, 0, 4),
                                      child: Text("Your email",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white)),
                                    ),
                                    TextField(
                                      controller: _username,
                                      style: const TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                      decoration: InputDecoration(
                                        enabledBorder:
                                            const UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white),
                                        ),
                                        focusedBorder:
                                            const UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white),
                                        ),
                                        border: const UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white),
                                        ),
                                        hintText: "email",
                                        errorText: _validateuser
                                            ? 'email must not be empty'
                                            : null,
                                        contentPadding:
                                            const EdgeInsets.fromLTRB(
                                                20.0, 15.0, 20.0, 15.0),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(48, 10, 48, 10),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(0, 12, 0, 4),
                                      child: Text("Password",
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white)),
                                    ),
                                    TextField(
                                      controller: _password,
                                      obscureText: !_showPassword,
                                      style: const TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                      decoration: InputDecoration(
                                        enabledBorder:
                                            const UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white),
                                        ),
                                        focusedBorder:
                                            const UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white),
                                        ),
                                        border: const UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white),
                                        ),
                                        hintText: 'password',
                                        errorText: _validatepassword
                                            ? 'Password must not be empty'
                                            : null,
                                        contentPadding:
                                            const EdgeInsets.fromLTRB(
                                                20.0, 15.0, 20.0, 15.0),
                                        suffixIcon: IconButton(
                                          icon: Icon(
                                            Icons.remove_red_eye,
                                            color: _showPassword
                                                ? Colors.white
                                                : Colors.grey,
                                          ),
                                          onPressed: () {
                                            setState(() => _showPassword =
                                                !_showPassword);
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 4),
                                child: Row(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text("Forgot Password ?",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.redAccent)),
                                    ),
                                    const Spacer(),
                                    // insert into later if it does not work
                                    Container(
                                      width: 150,
                                      height: 40,
                                      //margin: EdgeInsets.all(0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: const Color.fromARGB(
                                              255, 0, 0, 0),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          // topRight: Radius.circular(15),
                                          topLeft: Radius.circular(15),
                                          bottomLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15),
                                        ), 
                                      ),
                                      child: Row(
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: [
                                          const Text(
                                            "LOGIN",
                                            style: TextStyle(
                                              //fontFamily: 'Montserrat-Regular',
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          const Spacer(),
                                          const Icon(
                                            Icons.arrow_right_alt,
                                            color: Colors.redAccent,
                                            size: 40,
                                          ),
                                        ],
                                      ),
                                      padding: const EdgeInsets.all(10),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(5, 20, 5, 0),
                        child: Center(
                          child: Text("Dont have an account? Create One.",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                              )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
