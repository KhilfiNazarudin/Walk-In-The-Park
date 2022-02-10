import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:walk_in_the_park/main.dart';

class registerScreen extends StatefulWidget {
  registerScreen({Key? key}) : super(key: key);

  @override
  State<registerScreen> createState() => _registerScreenState();
}

class _registerScreenState extends State<registerScreen> {
  final _IDcontroller = TextEditingController();
  final _PWDcontroller = TextEditingController();
  String pwdinput = "";
  String idinput = "";
  String message = "Or sign in with other accounts";
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
                  padding: const EdgeInsets.only(left: 15, bottom: 30),
                  child: Container(
                    child: Text(
                      "Register as a new user",
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            idinput = _IDcontroller.text;
                            pwdinput = _PWDcontroller.text;
                            _IDcontroller.clear();
                            _PWDcontroller.clear();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return loginScreen();
                                },
                              ),
                            );
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
                              "Sign Up",
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
                    Padding(
                      padding: const EdgeInsets.only(top: 25, bottom: 25),
                      child: Text(
                        message,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontFamily: 'NexaBold',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () => {
                            {
                              launch(
                                  "https://accounts.google.com/signin/v2/identifier?service=accountsettings&continue=https%3A%2F%2Fmyaccount.google.com%3Futm_source%3Daccount-marketing-page%26utm_medium%3Dgo-to-account-button&flowName=GlifWebSignIn&flowEntry=ServiceLogin")
                            }
                          },
                          child: Container(
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.red.shade400,
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Center(
                                  child: Text(
                                "Google",
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => {
                            {launch("https://www.facebook.com/")}
                          },
                          child: Container(
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.blue.shade800,
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Center(
                                  child: Text(
                                "Facebook",
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
