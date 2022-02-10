import 'package:flutter/material.dart';
import 'package:walk_in_the_park/screens/exercise/exerciseDetailPage.dart';
import 'package:walk_in_the_park/screens/exercise/exerciseListPage.dart';
import 'package:walk_in_the_park/screens/login_reg/homeScreen.dart';
import 'package:walk_in_the_park/screens/profile/aboutPage.dart';
import 'package:walk_in_the_park/screens/profile/profilePage.dart';
import 'package:walk_in_the_park/widgets/drawer.dart';
import 'screens/chats/chatListPage.dart';

//void main() => runApp(Main());

class Main extends StatefulWidget {
  Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  Color defaultp = Colors.red.shade400;
  Color defaults = Colors.orange.shade100;
  Color defaulta = Colors.orange.shade300;
  String title = 'Chats';
  int index = 0;
  List<Widget> list = [
    ChatPage(),
    exerciseListPage(),
    profilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: defaultp, hintColor: defaults, accentColor: defaulta),
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange.shade300,
            title: Text(
              title,
              style: TextStyle(
                  fontFamily: 'NexaBold', fontWeight: FontWeight.bold),
            ),
          ),
          body: list[index],
          drawer: MyDrawer(onTap: (context, i, txt) {
            setState(() {
              index = i;
              title = txt;
              Navigator.pop(context);
            });
          })),
    );
  }
}
