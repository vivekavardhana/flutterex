
  // ignore_for_file: prefer_const_literals_to_create_immutables
  
import 'package:flutter/material.dart';
import 'package:multiselect_formfield/multiselect_formfield.dart';
import 'buttonstextpwd.dart';

 

// ignore: must_be_immutable
class Eigthpage extends StatefulWidget {
  const Eigthpage({Key? key}) : super(key: key);

  @override
  State<Eigthpage> createState() => _EigthpageState();
}

class _EigthpageState extends State<Eigthpage> {
  List? _myActivities;
  late String _myActivitiesResult;
  final formKey = GlobalKey<FormState>();
 
  @override
  void initState() {
     
    super.initState();
    _myActivities = [];
    _myActivitiesResult = '';
  }

    _saveForm() {
    var form = formKey.currentState!;
    if (form.validate()) {
      form.save();
      setState(() {
        _myActivitiesResult = _myActivities.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Stack(children: <Widget>[
      Center(
          // ignore: duplicate_ignore
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
         children: [
          const Text("Any Medical Condition we should be aware of?",
              style: TextStyle(fontSize: 25.0, color: Colors.white, fontFamily: 'Work_Sans',)),
          const SizedBox(height: 10),
          const Text("This will help you get to your goal saferand faster",
              style: TextStyle(fontSize: 15.0, color: Colors.white, fontFamily: 'Work_Sans',)),
          const SizedBox(height: 10),

          ///////////
             Container(
                padding: const EdgeInsets.all(16),
                child: MultiSelectFormField(
                  autovalidate: false,
                  chipBackGroundColor: Colors.red,
                  chipLabelStyle: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'Work_Sans',),
                  dialogTextStyle: const TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Work_Sans',),
                  checkBoxActiveColor: Colors.blue,
                  checkBoxCheckColor: Colors.white,
                  dialogShapeBorder: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0))),
                  title: const Text(
                    "",
                    style: TextStyle(fontSize: 16,fontFamily: 'Work_Sans',),
                  ),
                  validator: (value) {
                    if (value == null || value.length == 0) {
                      return 'Please select one or more options';
                    }
                    return null;
                  },
                   dataSource: [
                    {
                      "display": "Diabetes",
                      "value": "Diabetes",
                    },
                    {
                      "display": "Cholestrol",
                      "value": "Cholestrol",
                    },
                    {
                      "display": "Hypertension",
                      "value": "Hypertension",
                    },
                    {
                      "display": "PCOS",
                      "value": "PCOS",
                    },
                    {
                      "display": "Thyroid",
                      "value": "Thyroid",
                    },
                    {
                      "display": "Physical Injury",
                      "value": "Physical Injury",
                    },
                    {
                      "display": "Excessive Stree/Anxiety",
                      "value": "Excessive Stree/Anxiety",
                    },
                    {
                      "display": "Depression",
                      "value": "Depression",
                    },
                    {
                      "display": "Anger issues",
                      "value": "Anger issues",
                    },
                    {
                      "display": "Lonliness",
                      "value": "Lonliness",
                    },
                    {
                      "display": "Relationship stress",
                      "value": "Relationshi stress",
                    },
                  ],
                  textField: 'display',
                  valueField: 'value',
                  okButtonLabel: 'OK',
                  cancelButtonLabel: 'CANCEL',
                  hintWidget: const Text('Please choose one or more'),
                  initialValue: _myActivities,
                  onSaved: (value) {
                    if (value == null) return;
                    setState(() {
                      _myActivities = value;
                    });
                  },
                ),
              ),
              SizedBox(height: 10),
              PrimaryButton(txt: "Save"),
              Container(
                padding: const EdgeInsets.all(16),
                child: Text(_myActivitiesResult),
              )
           
          

           ///////////
        ],
      )),
    ]);
  }
}
