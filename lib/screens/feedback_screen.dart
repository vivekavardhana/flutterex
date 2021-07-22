import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({Key? key}) : super(key: key);

  @override
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  String selectfeedbacktype = '';
  String dropdownValue = 'One';
  final _description = TextEditingController();
  final bool _validatedescription = false;
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Feedback"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
                 Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(10.0),
                child: DropdownButton(
                    dropdownColor: Colors.black,
                    value: _value, //(_value == 1)? "Male":"Female",
                    style: const TextStyle(color: Color(0xFFf90f01)),
                    // ignore: prefer_const_literals_to_create_immutables
                    items: [
                      const DropdownMenuItem(
                        child: Text("Select",
                            style:
                                TextStyle(color: Color(0xFFf90f01), fontSize: 18)),
                        value: 0,
                      ),
                      const DropdownMenuItem(
                        child: Text("Equipment",
                            style:
                                TextStyle(color: Color(0xFFf90f01), fontSize: 18)),
                        value: 1,
                      ),
                      const DropdownMenuItem(
                        child: Text("Trainer",
                            style:
                                TextStyle(color: Color(0xFFf90f01), fontSize: 18)),
                        value: 2,
                      ),
                      const DropdownMenuItem(
                        child: Text("Over All Gym",
                            style:
                                TextStyle(color: Color(0xFFf90f01), fontSize: 18)),
                        value: 3,
                      ),
                      const DropdownMenuItem(
                        child: Text("Others",
                            style:
                                TextStyle(color: Color(0xFFf90f01), fontSize: 18)),
                        value: 3,
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        _value = int.parse(value.toString());
                      });
                    }),
              ),
           
               Row(
                 children: [
                   const Text("Choose the Feedback Type"),
                   DropdownButton(
            value: _value,
            // ignore: prefer_const_literals_to_create_immutables
            items: [
              const DropdownMenuItem(
                    child: Text("Equipment"),
                    value: 1,
              ),
              const DropdownMenuItem(
                    child: Text("Trainer"),
                    value: 2,
              ),
              const DropdownMenuItem(
                    child: Text("Over All Gym"),
                    value: 3,
              ),
              const  DropdownMenuItem(
                    child: Text("Others"),
                    value: 4,
              ),
            ],
             
            // onChanged: (int value) {
            //   setState(() {
            //     _value = value;
            //   });
            // },
            hint:const Text("Select item")
            ),
                 ],
               ),


               Padding(
                padding: const EdgeInsets.fromLTRB(48, 10, 48, 10),
                child: TextField(
                  controller: _description,
                  decoration: InputDecoration(
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal)),
 
                    hintText: "Description",
                    errorText: _validatedescription
                        ? 'Description must not be empty'
                        : null,
                    contentPadding:
                        const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(48, 10, 48, 10),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TextButton(
                    child: const Text("Submit Feedback",
                        style: TextStyle(fontSize: 22, color: Colors.white)),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(const Color(0xFFf90f01)),
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.all(12)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ))),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
