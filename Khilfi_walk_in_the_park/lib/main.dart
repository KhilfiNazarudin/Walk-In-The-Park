import 'package:flutter/material.dart';
import 'package:walk_in_the_park/home.dart';
import 'package:walk_in_the_park/screens/login_reg/homeScreen.dart';

void main() => runApp(MyApp());
Color defaultp = Colors.red.shade400;
Color defaults = Colors.orange.shade100;
Color defaulta = Colors.orange.shade300;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primaryColor: defaultp, hintColor: defaults, accentColor: defaulta),
        title: 'Material App',
        home: Scaffold(
          body: homeScreen(),
        ));
  }
}

class loginScreen extends StatefulWidget {
  loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  final _IDcontroller = TextEditingController();
  final _PWDcontroller = TextEditingController();
  String pwdinput = "";
  String idinput = "";
  String message = "Enter your login credentials";
  List<String> credentials = ["JohnDoe", "abc123"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.red.shade400, Colors.orange.shade100],
        )),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    child: Text(
                      "Login to your account",
                      style: TextStyle(
                          fontSize: 80,
                          color: Colors.amber,
                          fontFamily: 'NexaBold',
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 50, right: 50, bottom: 10),
                  child: TextField(
                    controller: _IDcontroller,
                    decoration: InputDecoration(
                      hintText: 'Username',
                      hintStyle: TextStyle(
                          fontFamily: 'NexaBold',
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      contentPadding: const EdgeInsets.all(20),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 50, right: 50, bottom: 10),
                  child: TextField(
                    controller: _PWDcontroller,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                          fontFamily: 'NexaBold',
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      contentPadding: const EdgeInsets.all(20),
                    ),
                  ),
                ),
                Text(
                  message,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'NexaBold', fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        idinput = _IDcontroller.text;
                        pwdinput = _PWDcontroller.text;
                        _IDcontroller.clear();
                        _PWDcontroller.clear();
                        if (credentials[0] != idinput ||
                            credentials[1] != pwdinput) {
                          message = "Wrong credentials entred";
                        } else {
                          idinput = "";
                          pwdinput = "";
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Main();
                              },
                            ),
                          );
                        }
                      });
                    },
                    child: Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          )),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontFamily: 'NexaBold',
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
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
