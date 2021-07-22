// ignore_for_file: avoid_unnecessary_containers, duplicate_ignore, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

// import 'integerselect.dart';

// ignore: must_be_immutable
class Fifthpage extends StatefulWidget {
  const Fifthpage({Key? key}) : super(key: key);

  @override
  State<Fifthpage> createState() => _FifthpageState();
}

class _FifthpageState extends State<Fifthpage> {
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
          const Text("What is your current weight?", style: TextStyle(fontSize: 25.0, color: Colors.white, fontFamily: 'Work_Sans',)),
          const SizedBox(height: 10),
          // ignore: sized_box_for_whitespace
          Container(
            width: MediaQuery.of(context).size.width ,
            child: const Text(
              "Your weight help us in calculating your BMI, to know how much you weigh.",
              style: TextStyle(fontSize: 15.0, color: Colors.white),
              maxLines: 5,
              softWrap: true,
              //textAlign: TextAlign.center,
            ),
          ),
          //const TextField(),
          //const Weight(),
         // const SizedBox(height: 70),
      Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(height: 10.0),
              const Text(' ',
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 22, fontFamily: 'Work_Sans',)),
              DefaultTabController(
                  length: 1, // length of tabs
                  initialIndex: 0,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text('kg', style: TextStyle(color: Colors.white ,fontSize: 25, fontFamily: 'Work_Sans',),),
                            
                            Text("________", style: TextStyle(color: Colors.red ,fontSize: 25, fontFamily: 'Work_Sans', )),
                          ],
                        ),
                        //Center(child: Text('kg', style: TextStyle(color: Colors.white ,fontSize: 25, decoration: TextDecoration.underline,),)),
                        const SizedBox(height: 10.0),
                        Container(
                                child: const Center(
                                  child:  Weight(),
                                ),
                              ),
                        ])),
            ]),
      ),
        ],
      )),
    ]);
  }
}
class Weight extends StatefulWidget {
  const Weight({Key? key}) : super(key: key);

  @override
  _WeightState createState() => _WeightState();
}

class _WeightState extends State<Weight> {
  int _currentIntValue = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        //Text('How tall are you', style: Theme.of(context).textTheme.headline6),

        const SizedBox(
          height: 10,
        ),
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
        const SizedBox(height: 10),
      ],
    );
  }
}
class Weightlb extends StatefulWidget {
  const Weightlb({Key? key}) : super(key: key);

  @override
  _WeightlbState createState() => _WeightlbState();
}

class _WeightlbState extends State<Weightlb> {
  double _currentDoubleValue = 1.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        //Text('How tall are you', style: Theme.of(context).textTheme.headline6),

        const SizedBox(
          height: 10,
        ),
        DecimalNumberPicker(
          textStyle: const TextStyle(fontSize: 25, fontFamily: 'Work_Sans',),
          selectedTextStyle:
              const TextStyle(fontSize: 45, color: Colors.deepOrangeAccent, fontFamily: 'Work_Sans',),
          value: _currentDoubleValue, 
          minValue: 0,
          maxValue: 100,
          decimalPlaces: 2,
          onChanged: (value) => setState(() => _currentDoubleValue = value),
        ),
        const SizedBox(height: 5),
      ],
    );
  }
}