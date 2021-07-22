import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Stack(children: <Widget>[
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),

        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text("Select your Gender ?",
                  style: TextStyle(fontSize: 25.0, color: Colors.white)),
              const SizedBox(height: 10),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(10.0),
                child: DropdownButton(
                    
                     
                    dropdownColor: Colors.white,
                    value: _value, //(_value == 1)? "Male":"Female",
                    style: const TextStyle(color: Colors.red, fontFamily: 'Work_Sans',),
                    // ignore: prefer_const_literals_to_create_immutables
                    items: [
                      const DropdownMenuItem(
                        child: Text("",
                            style:
                                TextStyle(color: Colors.black, fontSize: 18, fontFamily: 'Work_Sans',)),
                        value: 0,
                      ), 
                      const DropdownMenuItem(
                        child: Text("Male",
                            style:
                                TextStyle(color: Colors.black, fontSize: 18,fontFamily: 'Work_Sans',)),
                        value: 1,
                      ),
                      const DropdownMenuItem(
                        child: Text("Female",
                            style:
                                TextStyle(color: Colors.black, fontSize: 18,fontFamily: 'Work_Sans',)),
                        value: 2,
                      ),
                      const DropdownMenuItem(
                        child: Text("Others",
                            style:
                                TextStyle(color: Colors.black, fontSize: 18,fontFamily: 'Work_Sans',)),
                        value: 3,
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        _value = int.parse(value.toString());
                      });
                    }),
              ),
            ],
          )),
        ),
      ),
    ]);
  }
}
