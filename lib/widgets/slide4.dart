// ignore_for_file: avoid_unnecessary_containers, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

// ignore: must_be_immutable
class Fourthpage extends StatefulWidget {
  const Fourthpage({Key? key}) : super(key: key);

  @override
  State<Fourthpage> createState() => _FourthpageState();
}

class _FourthpageState extends State<Fourthpage> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Stack(children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
      const Text("How tall are you ?", style: TextStyle(fontSize: 25.0, color: Colors.white, fontFamily: 'Work_Sans',)),
      const SizedBox(height: 10),
      const Text(
          "Your Height helps us in calculating your BMI, to know how much you should weigh.",
          style: TextStyle(fontSize: 15.0, color: Colors.white, fontFamily: 'Work_Sans',)),
      //const TextField(),
      const Padding(
        padding: EdgeInsets.all(8.0),
      ),
   
        ],
      ),
       Container(
         padding: const EdgeInsets.only(top: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
             // const SizedBox(height: 20.0),
              const Text(' ',
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 22, fontFamily: 'Work_Sans',)),
              DefaultTabController(
                  length: 2, // length of tabs
                  initialIndex: 0,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          child: const TabBar(
                            labelColor: Colors.white,
                            unselectedLabelColor: Colors.white54,
                            labelStyle: TextStyle(fontSize: 18, fontFamily: 'Work_Sans',),
                            tabs: [
                              Tab(text: 'Feet / Inches'),
                              Tab(text: 'Centimenters'),
                            ],
                          ),
                        ),
                        Container(
                            height: 300, //height of TabBarView
                            decoration: const BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                                        color: Colors.grey, width: 0.5))),
                            child: TabBarView(children: <Widget>[
                              Container(
                                child: const Center(
                                  child:  Heightcm(),
                                ),
                              ),
                              Container(
                                child: const Center(
                                  child: Height(),
                                ),
                              ),
                            ]))
                      ])),
            ]),
      ),
    ]);
  }
}

//////

class Height extends StatefulWidget {
  const Height({Key? key}) : super(key: key);

  @override
  _HeightState createState() => _HeightState();
}

class _HeightState extends State<Height> {
  int    _currentIntValue = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        //Text('How tall are you', style: Theme.of(context).textTheme.headline6),

        const SizedBox(
          height: 50,
        ),
        NumberPicker(
          // decoration: Decoration.lerp(DecorationImage., 1.0, 0.5),
          textStyle: const TextStyle(fontSize: 25, color: Colors.white, fontFamily: 'Work_Sans',),
          selectedTextStyle:
              const TextStyle(fontSize: 45, color: Colors.deepOrangeAccent, fontFamily: 'Work_Sans',),
          itemHeight: 60,
          value: _currentIntValue,
          minValue: 0,
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


////
class Heightcm extends StatefulWidget {
  const Heightcm({Key? key}) : super(key: key);

  @override
  _HeightcmState createState() => _HeightcmState();
}

class _HeightcmState extends State<Heightcm> {
  double _currentDoubleValue = 3.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        //Text('How tall are you', style: Theme.of(context).textTheme.headline6),

        const SizedBox(
          height: 20,
        ),
        DecimalNumberPicker(
          textStyle: const TextStyle(fontSize: 25, color: Colors.white54, fontFamily: 'Work_Sans',),
          selectedTextStyle:
              const TextStyle(fontSize: 45, color: Colors.deepOrangeAccent, fontFamily: 'Work_Sans',),
          value: _currentDoubleValue,
          minValue: 0,
          maxValue: 250,
          decimalPlaces: 2,
          onChanged: (value) => setState(() => _currentDoubleValue = value),
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}
