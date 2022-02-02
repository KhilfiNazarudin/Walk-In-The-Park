import 'package:flutter/material.dart';
import 'package:walk_in_the_park/screens/chats/chatListPage.dart';
import 'package:walk_in_the_park/screens/profile/profilePage.dart';

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
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Theme.of(context).primaryColor, Theme.of(context).hintColor],
      )),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, bottom: 10),
              child: TextField(
                controller: _IDcontroller,
                decoration: InputDecoration(
                  hintText: 'Username',
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w300, color: Colors.white),
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
              padding: const EdgeInsets.only(left: 50, right: 50, bottom: 10),
              child: TextField(
                controller: _PWDcontroller,
                decoration: InputDecoration(
                  hintText: 'PWD',
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w300, color: Colors.white),
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
            ),
            RaisedButton(
              child: Text('LOGIN'),
              color: Colors.blue[500],
              onPressed: () {
                setState(() {
                  idinput = _IDcontroller.text;
                  pwdinput = _PWDcontroller.text;
                  _IDcontroller.clear();
                  _PWDcontroller.clear();
                  if (credentials[0] != idinput || credentials[1] != pwdinput) {
                    message = "Wrong credentials entred";
                  } else {
                    idinput = "";
                    pwdinput = "";
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ChatPage();
                    }));
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
