// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Seventhpage extends StatefulWidget {
    const Seventhpage({Key? key}) : super(key: key);

  @override
  State<Seventhpage> createState() => _SeventhpageState();
}

class _SeventhpageState extends State<Seventhpage> {
    int _value = 6; 
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
          const Text("How fast do you want to reach your goal?",
              style: TextStyle(fontSize: 25.0, color: Colors.white, fontFamily: 'Work_Sans',)),
          const SizedBox(height: 10),
          const Text("This is good, sustainable pace to reach you goal weight",
              style: TextStyle(fontSize: 15.0, color: Colors.white, fontFamily: 'Work_Sans',)),
          //const TextField(),
          const SizedBox(height: 30,),
          
          Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Center(child: Text(_value.toString()+' kg / week', style: TextStyle(color: Colors.white ,fontSize: 25, fontFamily: 'Work_Sans',),)),
                            
                            Text("______________", style: TextStyle(color: Colors.red ,fontSize: 25, fontFamily: 'Work_Sans', )),
                          ],
                        ),
          const SizedBox(height: 30),
          
          Padding(
          padding: const EdgeInsets.all(25.0),
          child: Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                // const Icon(
                //   Icons.volume_up,
                //   size: 40,
                // ),
                Expanded(
                    child: Slider(
                        value: _value.toDouble(),
                        min: 1.0,
                        max: 100.0,
                        divisions: 409,
                        activeColor: Colors.red,
                        inactiveColor: Colors.white,
                        label: 'Set goal value',
                        onChanged: (double newValue) {
                          setState(() {
                            _value = newValue.round();
                          });
                        },
                        semanticFormatterCallback: (double newValue) {
                          return '${newValue.round()} ';
                        })),
              ])),
        )
           ],
      )),

      ]);
  }
}
