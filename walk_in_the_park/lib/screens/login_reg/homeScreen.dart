import 'package:flutter/material.dart';
import 'package:walk_in_the_park/main.dart';
import 'package:walk_in_the_park/screens/login_reg/registerScreen.dart';

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
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                  child: Text(
                    "Walk-in The Park",
                    style: TextStyle(
                        fontSize: 80,
                        color: Colors.amber,
                        fontFamily: 'NexaBold',
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Container(
                height: 200,
                child: GridView.count(
                  childAspectRatio: 2,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Icon(
                      Icons.email_outlined,
                      size: 60,
                    ),
                    Icon(
                      Icons.medical_services_outlined,
                      size: 60,
                    ),
                    Icon(
                      Icons.personal_injury_outlined,
                      size: 60,
                    ),
                    Icon(
                      Icons.phone_in_talk_outlined,
                      size: 60,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: GestureDetector(
                  onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return loginScreen();
                    }))
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
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return registerScreen();
                  }))
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
                      "Register",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
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
