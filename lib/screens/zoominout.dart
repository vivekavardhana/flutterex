// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'dart:async';

// import 'package:flutter/painting.dart';
// import 'package:vector_math/vector_math_64.dart' show Vector3;

class ZoominPage extends StatefulWidget {
  const ZoominPage({Key? key}) : super(key: key);

  @override
  _ZoominPageState createState() => _ZoominPageState();
}

class _ZoominPageState extends State<ZoominPage> {
bool _zoomyesno = true;

@override
// ignore: must_call_super
void initState(){
 
Timer(Duration(seconds: 5), () {
  
  if(_zoomyesno == true){
    setState(() {
      _zoomyesno = false;      
    });
  
  } 
  else
  {
    setState(() {
      _zoomyesno = true;    
    });
  
  }
});
  

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      // ignore: avoid_unnecessary_containers
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(  
          child: AnimatedDefaultTextStyle(
            
            style: _zoomyesno ? 
                TextStyle(fontSize: 25, color: Colors.black)
            :
                TextStyle(fontSize: 50, color: Colors.amber),
            duration: Duration(milliseconds: 520),
            
            child: Text('Abcdefgh'), 
          ),
        ),
      ),
    );
  }
}
