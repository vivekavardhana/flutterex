// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Zerothpage extends StatefulWidget {
  const Zerothpage({Key? key}) : super(key: key);

  @override
  State<Zerothpage> createState() => _ZerothpageState();
}

class _ZerothpageState extends State<Zerothpage> {
  final _user = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Stack(children: <Widget>[
      // ignore: avoid_unnecessary_containers
      Container(
        // color: Colors.black,
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text("Hey there !",
                style: TextStyle(fontSize: 25.0, color: Colors.white,fontFamily: 'Work_Sans',)),
            const SizedBox(
              height: 10,
            ),
            // ignore: sized_box_for_whitespace
            Container(
              width: MediaQuery.of(context).size.width,
              child: const Text(
                "We are happy you have taken the  first step towards healthier you. We need a few details to kickstart your journey.",
                style: TextStyle(fontSize: 15.0, color: Colors.white,fontFamily: 'Work_Sans',),
                maxLines: 5,
                softWrap: true,
              ),
            ),
            const SizedBox(height: 20),
            const Text("What is your name ?",
                style: TextStyle(fontSize: 25.0, color: Colors.white,fontFamily: 'Work_Sans',)),
            const SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.all(2.0),
              // ignore: sized_box_for_whitespace
              child: AnimatedContainer(
                curve: Curves.easeIn,
                duration: const Duration(
                  milliseconds: 1000,
                ),
                transform: Matrix4.translationValues(0, 0, 1),
                width: MediaQuery.of(context).size.width *
                    0.85, //padding: const EdgeInsets.all(18.0),
                child: TextField(
                  style: TextStyle(color: Colors.white, fontFamily: 'Work_Sans',),
                  controller: _user,
                  decoration: InputDecoration(
                    helperText: "Enter Name",
                    helperStyle: TextStyle(color: Colors.white,fontFamily: 'Work_Sans',),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffffffff)),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffffffff)),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () => _user.clear(),
                      icon: Icon(
                        Icons.clear,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    ]);
  }
}
