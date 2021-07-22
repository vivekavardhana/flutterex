// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Secondpage extends StatefulWidget {
    const Secondpage({Key? key}) : super(key: key);

  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  final _place = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Stack(children: <Widget>[
       
      Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Text("Where are you from ?",
              style: TextStyle(fontSize: 25.0, color: Colors.white,fontFamily: 'Work_Sans',)),
          const SizedBox(height: 10),
          const Text("This will help us personalize the app for you",
              style: TextStyle(fontSize: 15.0, color: Colors.white,fontFamily: 'Work_Sans',)),
          //const TextField(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            // ignore: sized_box_for_whitespace
            child: Container(
               width: MediaQuery.of(context).size.width,                //padding: const EdgeInsets.all(18.0),
              child: TextField(
              style: TextStyle(fontSize: 20.0, color: Colors.white, fontFamily: 'Work_Sans',),  
                //controller: user,
               decoration: InputDecoration(
                    helperText: "Enter place",
                    helperStyle: TextStyle(color: Colors.white, fontFamily: 'Work_Sans',),
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
                          onPressed: () => _place.clear(),
                          icon: Icon(Icons.clear, color: Color(0xffffffff),),
                        ),
                  ),
              ),
            ),
          ),
          // const SizedBox(height: 50),
          // const Text("Where are you from?",
          //     style: TextStyle(fontSize: 25.0)),
          // const SizedBox(height: 10),
          // const Text("Our coaches will be able to communicate more effectively",
          //     style: TextStyle(fontSize: 15.0)),
           ],
      )),

      ]);
  }
}
