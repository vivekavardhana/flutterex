// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

// import 'integerselect.dart';

// ignore: must_be_immutable
class Thirdpage extends StatefulWidget {
  const Thirdpage({Key? key}) : super(key: key);

  @override
  State<Thirdpage> createState() => _ThirdpageState();
}

class _ThirdpageState extends State<Thirdpage> {
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
          const Text("What is your Age ?", style: TextStyle(fontSize: 25.0, color: Colors.white)),
          const SizedBox(height: 10),
          // ignore: sized_box_for_whitespace
          Container(
            width: MediaQuery.of(context).size.width ,
            child: const Text(
              "Your age determines how much you should consume. (Select Age in Years)",
              style: TextStyle(fontSize: 15.0, color: Colors.white, fontFamily: 'Work_Sans',),
              maxLines: 5,
              softWrap: true,
              //textAlign: TextAlign.center,
            ),
          ),
          //const TextField(),
          Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        SizedBox(height:20),
                        //Center(child: Text('Age', style: TextStyle(color: Colors.white ,fontSize: 25, decoration: TextDecoration.underline, decorationColor: Colors.red  ),)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text('Age', style: TextStyle(color: Colors.white ,fontSize: 25, fontFamily: 'Work_Sans',),),
                            
                            Text("________", style: TextStyle(color: Colors.red ,fontSize: 25, fontFamily: 'Work_Sans', )),
                          ],
                        ),

                        const SizedBox(height: 10.0),
                        // ignore: avoid_unnecessary_containers
                        Container(
                                child: const Center(
                                  child:  Age(),
                                ),
                              ),
                        ])
          //const Age(),
        ],
      )),
    ]);
  }
}

class Age extends StatefulWidget {
  const Age({Key? key}) : super(key: key);

  @override
  _AgeState createState() => _AgeState();
}

class _AgeState extends State<Age> {
  int _currentIntValue = 10;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 6),
        //Text('Default', style: Theme.of(context).textTheme.headline6),
        NumberPicker(
          // decoration: Decoration.lerp(DecorationImage., 1.0, 0.5),
          textStyle: const TextStyle(fontSize: 25, color: Colors.white, fontFamily: 'Work_Sans',),
          selectedTextStyle:
              const TextStyle(fontSize: 45, color: Colors.deepOrangeAccent, fontFamily: 'Work_Sans',),
          itemHeight: 60,
          value: _currentIntValue,
          minValue: 1,
          maxValue: 100,
          step: 1,
          haptics: true,
          onChanged: (value) => setState(() => _currentIntValue = value),
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: () => setState(() {
                final newValue = _currentIntValue - 10;
                _currentIntValue = newValue.clamp(0, 100);
              }),
            ),
            //
          ],
        ),
      ],
    );
  }
}
