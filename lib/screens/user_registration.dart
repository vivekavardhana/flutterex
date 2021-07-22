import 'package:flutter/material.dart';
import 'package:back_button_interceptor/back_button_interceptor.dart';
import '../main.dart';


class UserRegistrationScreen extends StatefulWidget {
  const UserRegistrationScreen({Key? key}) : super(key: key);

  @override
  _UserRegistrationScreenState createState() => _UserRegistrationScreenState();
}

class _UserRegistrationScreenState extends State<UserRegistrationScreen> {
  final _username = TextEditingController();
  final _mobileno = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();

  final bool _validateusername = false;
  final bool _validatemobileno = false;
  final bool _validateemail = false;
  final bool _validatepassword = false;
  bool _showPassword = false;

  @override
  void initState() {
    BackButtonInterceptor.add(myInterceptor);
    super.initState();
  }

  @override
  void dispose() {
    
    BackButtonInterceptor.remove(myInterceptor);
    super.dispose();
  }

    bool myInterceptor(bool stopDefaultButtonEvent, RouteInfo info) {
    Navigator.of(context).pop(false);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MyHomePage( title: "WTF Home",
                
              ),
            ),
          );// Do some stuff.
    return true;
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(48, 10, 48, 10),
                child: TextField(
                  controller: _username,
                  decoration: InputDecoration(
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal)),
                    // labelText: 'Username',

                    hintText: "Username",
                    errorText:
                        _validateusername ? 'Username must not be empty' : null,
                    contentPadding:
                        const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(48, 10, 48, 10),
                child: TextField(
                  controller: _mobileno,
                  decoration: InputDecoration(
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal)),
                    // labelText: 'Username',

                    hintText: "Mobile Number",
                    errorText: _validatemobileno
                        ? 'Mobile Number must not be empty'
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
                child: TextField(
                  controller: _email,
                  decoration: InputDecoration(
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal)),
                    // labelText: 'Username',

                    hintText: "e-mail",
                    errorText:
                        _validateemail ? 'email must not be empty' : null,
                    contentPadding:
                        const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(48, 10, 48, 10),
                child: TextField(
                  controller: _password,
                  obscureText: !_showPassword,
                  decoration: InputDecoration(
                    hintText: 'password',
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal)),
                    errorText:
                        _validatepassword ? 'Password must not be empty' : null,
                    contentPadding:
                        const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: _showPassword ? Colors.red : Colors.grey,
                      ),
                      onPressed: () {
                        setState(() => _showPassword = !_showPassword);
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(48, 10, 48, 10),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TextButton(
                    child: const Text("Register",
                        style: TextStyle(fontSize: 22, color: Colors.white)),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.red),
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
