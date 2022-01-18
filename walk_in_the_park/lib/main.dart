import 'package:flutter/material.dart';
import 'package:walk_in_the_park/screens/exerciseDetailPage.dart';
import 'package:walk_in_the_park/screens/exerciseListPage.dart';
import 'screens/chatListPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: ChatPage()),
    );
  }
}
