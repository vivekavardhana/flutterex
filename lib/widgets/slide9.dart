// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Ninthpage extends StatefulWidget {
  const Ninthpage({Key? key}) : super(key: key);

  @override
  State<Ninthpage> createState() => _NinthpageState();
}

class _NinthpageState extends State<Ninthpage> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Stack(children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text("To Loose 1.0kg in 4 weeks you need to ?",
                style: TextStyle(fontSize: 25.0, color: Colors.white, fontFamily: 'Work_Sans',)),
          ),
          const Padding(
            padding: const EdgeInsets.all(8.0),
            child: const SizedBox(height: 10),
          ),
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text("Eat 2400 calories every day",
                style: TextStyle(fontSize: 15.0, color: Colors.white, fontFamily: 'Work_Sans',)),
          ),
          const Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text("Drink 9 glasses of water every day every day",
                style: TextStyle(fontSize: 15.0, color: Colors.white, fontFamily: 'Work_Sans',)),
          ),
          const Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text("Walk 1000 steps every day every day",
                style: TextStyle(fontSize: 15.0, color: Colors.white, fontFamily: 'Work_Sans',)),
          ),
          const Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text("Burn 480 calories every day",
                style: TextStyle(fontSize: 15.0, color: Colors.white, fontFamily: 'Work_Sans',)),
          ),
          //const TextField(),
        ],
      ),
    ]);
  }
}
