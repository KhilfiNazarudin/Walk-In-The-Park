import 'package:flutter/material.dart';
import 'package:walk_in_the_park/main.dart';

class homeScreen extends StatefulWidget {
  homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Theme.of(context).primaryColor, Theme.of(context).hintColor],
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("THE PICTURE WILL GO HERE"),
              ElevatedButton(
                  onPressed: () => {
                        Navigator.pop(context,
                            MaterialPageRoute(builder: (context) {
                          return loginScreen();
                        }))
                      },
                  child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
