import 'package:flutter/material.dart';
import 'package:walk_in_the_park/screens/exercise/exerciseDetailPage.dart';
import 'package:walk_in_the_park/screens/exercise/exerciseListPage.dart';
import 'package:walk_in_the_park/screens/login_reg/homeScreen.dart';
import 'package:walk_in_the_park/screens/profile/profilePage.dart';
import 'screens/chats/chatListPage.dart';

void main() => runApp(Main());

class Main extends StatefulWidget {
  Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  Color defaultp = Colors.red.shade400;
  Color defaults = Colors.orange.shade100;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: defaultp, hintColor: defaults),
      title: 'Material App',
      home: homeScreen(),
    );
  }
}
