// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:back_button_interceptor/back_button_interceptor.dart';
import 'package:flutter/widgets.dart';
import '../main.dart';
import 'dart:async';

/// This is the stateful widget that the main application instantiates.
class FlashStatefulWidget extends StatefulWidget {
  const FlashStatefulWidget({Key? key}) : super(key: key);

  @override
  State<FlashStatefulWidget> createState() => _FlashStatefulWidgetState();
}

/// This is the private State class that goes with flashStatefulWidget.
/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _FlashStatefulWidgetState extends State<FlashStatefulWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);

  bool _zoomyesno = true;

  @override
  void initState() {
    BackButtonInterceptor.add(myInterceptor);
    Timer(Duration(seconds: 2), () {
      if (_zoomyesno == true) {
        setState(() {
          _zoomyesno = false;
        });
      } else {
        setState(() {
          _zoomyesno = true;
        });
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
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
    const double smallLogo = 3;
    const double bigLogo = 150;
    return Scaffold(
      body: Material(
        type: MaterialType.transparency,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            final Size biggest = constraints.biggest;
            return Stack(
              children: <Widget>[
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
                PositionedTransition(
                  rect: RelativeRectTween(
                    begin: RelativeRect.fromSize(
                        Rect.fromLTWH(
                            biggest.width * 0.03 - smallLogo,
                            biggest.height * 0.3 - smallLogo,
                            smallLogo,
                            smallLogo),
                        biggest),
                    end: RelativeRect.fromSize(
                        Rect.fromLTWH(
                            biggest.width * 0.6 - bigLogo,
                            biggest.height * 0.5 - bigLogo, 
                            bigLogo, 
                            bigLogo),
                        biggest),
                  ).animate(CurvedAnimation(
                    parent: _controller,
                    curve: Curves.elasticInOut,
                  )),
                  child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Image.asset(
                          "assets/images/wtf-1a.png")), //FlutterLogo()
                ),
                PositionedTransition(
                  rect: RelativeRectTween(
                    begin: RelativeRect.fromSize(
                        Rect.fromLTWH(
                            biggest.width * 0.15 - smallLogo,
                            biggest.height * 0.01 - smallLogo,
                            smallLogo,
                            smallLogo),
                        biggest),
                    end: RelativeRect.fromSize(
                        Rect.fromLTWH(
                            biggest.width * 0.68 - bigLogo,
                            biggest.height * 0.5 - bigLogo, 
                            bigLogo, 
                            bigLogo),
                        biggest),
                  ).animate(CurvedAnimation(
                    parent: _controller,
                    curve: Curves.elasticInOut,
                  )),
                  child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Image.asset(
                          "assets/images/wtf-1b.png")), //FlutterLogo()
                ),
                PositionedTransition(
                  rect: RelativeRectTween(
                    begin: RelativeRect.fromSize(
                        Rect.fromLTWH(
                            biggest.width * 0.5 - smallLogo,
                            biggest.height * 0 - smallLogo,
                            smallLogo,
                            smallLogo),
                        biggest),
                    end: RelativeRect.fromSize(
                        Rect.fromLTWH(
                            biggest.width * 0.77 - bigLogo,
                            biggest.height * 0.5 - bigLogo, 
                            bigLogo, 
                            bigLogo),
                        biggest),
                  ).animate(CurvedAnimation(
                    parent: _controller,
                    curve: Curves.elasticInOut,
                  )),
                  child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Image.asset(
                          "assets/images/wtf-2.png")), //FlutterLogo()
                ),
                PositionedTransition(
                  rect: RelativeRectTween(
                    begin: RelativeRect.fromSize(
                        Rect.fromLTWH(
                            //lowerL
                            biggest.width * 0.85 - smallLogo,
                            biggest.height * 0.01 - smallLogo,
                            smallLogo,
                            smallLogo),
                        biggest),
                    end: RelativeRect.fromSize(
                        Rect.fromLTWH(
                            biggest.width * 0.853 - bigLogo,
                            biggest.height * 0.511 - bigLogo, 
                            bigLogo, 
                            bigLogo),
                        biggest),
                  ).animate(CurvedAnimation(
                    parent: _controller,
                    curve: Curves.elasticInOut,
                  )),
                  child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Image.asset(
                          "assets/images/wtf-4.png")), //FlutterLogo()
                ),
                PositionedTransition(
                  rect: RelativeRectTween(
                    begin: RelativeRect.fromSize(
                        Rect.fromLTWH(
                            //red
                            biggest.width * 0.96 - smallLogo,
                            biggest.height * 0.3 - smallLogo,
                            smallLogo,
                            smallLogo),
                        biggest),
                    end: RelativeRect.fromSize(
                        Rect.fromLTWH(
                            biggest.width * 0.88 - bigLogo,
                            biggest.height * 0.47 - bigLogo, 
                            bigLogo, 
                            bigLogo),
                        biggest),
                  ).animate(CurvedAnimation(
                    parent: _controller,
                    curve: Curves.elasticInOut,
                  )),
                  child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Image.asset(
                        "assets/images/wtf-3.png",
                      )), //FlutterLogo()
                ),
                
                Container(
                  alignment: Alignment.center,
                  //margin: const EdgeInsets.only(top: 370, left: 130),
                  child: DefaultTextStyle(
                    style: const TextStyle(
                      fontFamily: 'Work_Sans',
                      fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                    child: Center(
                      child: AnimatedTextKit(
                        animatedTexts: [
                          ScaleAnimatedText(
                            'WITNESS THE FITNESS',
                          ),

                          //WavyAnimatedText('To'),
                          // WavyAnimatedText('Witness'),
                        ],
                        pause: const Duration(milliseconds: 80),
                        totalRepeatCount: 2,
                        isRepeatingAnimation: true,
                        repeatForever: true,
                      ),
                    ),
                  ),
                ),

                // ignore: avoid_unnecessary_containers

                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Container(
                      margin: const EdgeInsets.only(top: 540),
                      child: Image.asset("assets/images/gymvectors.jpeg")),
                ),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(8, 8, 8, 80),
                    //padding: EdgeInsets.only(bottom: 20),

                    alignment: Alignment.center,
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                        // border: Border.all(color: Colors.black),
                        color: Colors.red,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white12,
                            spreadRadius: 6,
                            blurRadius: 1,
                            offset: const Offset(0, 0),
                          )
                        ]),
                    child: const Center(
                      child: Text(
                        'Let us get started',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          letterSpacing: 1.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(8, 8, 8, 80),
                    //padding: EdgeInsets.only(bottom: 20),

                    alignment: Alignment.center,
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                        // border: Border.all(color: Colors.black),
                        color: Color(0xFFf90f01),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(38.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              spreadRadius: 6,
                              blurRadius: 1,
                              offset: const Offset(0, 0) ////////
                              )
                        ]),
                    child: const Center(
                      child: Text(
                        'Let us get started',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          letterSpacing: 1.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
