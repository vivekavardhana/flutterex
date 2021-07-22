// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:back_button_interceptor/back_button_interceptor.dart';
import '../main.dart';
import 'dart:ui';
import 'dart:async';

import '../widgets/slide0.dart';
import '../widgets/slide1.dart';
import '../widgets/slide2.dart';
import '../widgets/slide3.dart';
import '../widgets/slide4.dart';
import '../widgets/slide5.dart';
import '../widgets/slide6.dart';
import '../widgets/slide7.dart';
import '../widgets/slide8.dart';
import '../widgets/slide9.dart';

final List<Widget> contents = <Widget>[
  const Zerothpage(),
  const Firstpage(),
  const Secondpage(),
  const Thirdpage(),
  const Fourthpage(),
  const Fifthpage(),
  const Sixthpage(),
  const Seventhpage(),
  const Eigthpage(),
  const Ninthpage(),
];

class Preamble extends StatefulWidget {
  const Preamble({Key? key}) : super(key: key);

  @override
  _PreambleState createState() => _PreambleState();
}

class _PreambleState extends State<Preamble> {
  int currentIndex = 0;
  PageController _controller = PageController(initialPage: 0);

  bool visible = false;

  loadProgress() {
    // ignore: unused_local_variable
    Timer timer = Timer(Duration(seconds: 1), () {
      setState(() {
        visible = false;
      });
    });
    // if(visible == true){
    //   setState(() {
    //    visible = false;
    //   });
    // }
    // else{
    //   setState(() {
    //    visible = true;
    //   });
    // }
  }

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    BackButtonInterceptor.add(myInterceptor);
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            _controller.previousPage(
                duration: const Duration(milliseconds: 1000),
                curve: Curves.easeInToLinear);
          },
        ),
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            // ignore: avoid_unnecessary_containers
            Padding(
              padding: const EdgeInsets.all(4.0),
              // ignore: avoid_unnecessary_containers
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    contents.length,
                    (index) => buildDot(index, context),
                  ),
                ),
              ),
            ),
            // const SizedBox(height: 20),
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.all(40),
                    child: contents[i],
                  );
                },
              ),
            ),
             
            // ignore: avoid_unnecessary_containers
            Container(
              //color: Colors.lightBlueAccent,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  const Spacer(),
                  if (visible == false)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        //margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(170)),
                          color: Colors.white54,
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.arrow_forward,
                              color: Colors.white),
                          onPressed: () {
                            //  print(visible.toString()+"forward");
                            _controller.nextPage(
                              duration: const Duration(milliseconds: 1000),
                              curve: Curves.easeInToLinear,
                            );
                            loadProgress();
                            setState(() {
                              visible = true;
                            });
                          },
                        ),
                      ),
                    )
                  else
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(70)),
                          color: Colors.white54,
                        ),
                        child: Stack(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.arrow_forward,
                                  color: Colors.white),
                              onPressed: () {
                                _controller.nextPage(
                                  duration: const Duration(milliseconds: 1000),
                                  curve: Curves.easeInToLinear,
                                );
                                setState(() {
                                  visible = false;
                                });
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircularProgressIndicator(),
                            ),
                          ],
                        ),
                      ),
                    )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 5,
      width: currentIndex == index ? 20 : 20,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: currentIndex == index
            ? Theme.of(context).primaryColor
            : Colors.white54,
      ),
    );
  }
}
