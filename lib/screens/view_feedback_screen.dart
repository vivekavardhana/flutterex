import 'package:flutter/material.dart';

class ViewFeedbackScreen extends StatefulWidget {
  const  ViewFeedbackScreen({Key? key}) : super(key: key);

  @override
  _ViewFeedbackScreenState createState() => _ViewFeedbackScreenState();
}

class _ViewFeedbackScreenState extends State<ViewFeedbackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const  Text("View Feed Back"),
      ),
    
    
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        child: Card(
          
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
            children: [
                Padding(
                 padding: const   EdgeInsets.all(8.0),
                 child: Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   // ignore: prefer_const_literals_to_create_immutables
                   children: [
                       const  Text("Feed back :"),
                     
                   ],
                 ),
               ),
                 Padding(
                 padding: const  EdgeInsets.all(8.0),
                 child: Row(
                   // ignore: prefer_const_literals_to_create_immutables
                   children: [
                      const Text("Related to"),
                   ],
                 ),
               ),
                  Padding(
                 padding: const  EdgeInsets.all(8.0),
                 child: Row(
                   // ignore: prefer_const_literals_to_create_immutables
                   children: [
                       const Text("Description"),
                   ],
                 ),
               ),
                  Padding(
                 padding:  const EdgeInsets.all(8.0),
                 child: Row(
                   // ignore: prefer_const_literals_to_create_immutables
                   children: [
                       const Text("File Description"),
                   ],
                 ),
               ),  
          ],
        ),
        ),
      ),
    ),
  
    );
  }
}
