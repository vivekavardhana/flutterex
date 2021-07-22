import 'package:flutter/material.dart';
import 'screens/splashscreen.dart';
import 'screens/loginsignupscreen.dart';
import 'screens/preamble.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WTF Home',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'WTF Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Witnes The Fitness',
      theme: ThemeData(
        hintColor: Colors.white,
        primarySwatch: Colors.deepOrange,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text("Preamble", style: TextStyle(color: Colors.white, fontFamily: 'Work_Sans' ,)),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {},
          ), 
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),

          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                child: const Text(
                  'Flash screen Animation',
                  style: TextStyle(
                    fontFamily: 'Work_Sans' ,
                    fontSize: 30.0,
                    color: Color(0xFFf90f01),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const FlashStatefulWidget(),
                        //settings: RouteSettings(),
                      ),
                      (Route<dynamic> route) => false);
                },
              ),
              TextButton(
                child: const Text(
                  'Login and Sign Up', style: TextStyle(
                    fontFamily: 'Work_Sans' ,
                    fontSize: 30.0,
                    color: Color(0xFFf90f01),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (BuildContext context) => const LoginPage(),
                        //settings: RouteSettings(),
                      ),
                      (Route<dynamic> route) => false);
                },
              ),
              TextButton(
                child: const Text(
                  'WTF Preamble',
                  style: TextStyle(
                    fontFamily: 'Work_Sans' ,
                    fontSize: 30.0,
                    color: Color(0xFFf90f01),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (BuildContext context) => const Preamble(),
                        //settings: RouteSettings(),
                      ),
                      (Route<dynamic> route) => false);
                },
              ),
               
            ],
          ),
        ),
      ),
    );
  }
}

 