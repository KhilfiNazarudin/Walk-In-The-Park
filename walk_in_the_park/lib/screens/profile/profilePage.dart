import 'package:flutter/material.dart';
import 'package:walk_in_the_park/screens/login_reg/homeScreen.dart';
import 'package:walk_in_the_park/screens/profile/aboutPage.dart';
import 'package:walk_in_the_park/screens/profile/docProfilePage.dart';
import 'package:walk_in_the_park/widgets/drawer.dart';

class profilePage extends StatefulWidget {
  profilePage({Key? key}) : super(key: key);

  @override
  _profilePageState createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/superhero.jpg'),
                  backgroundColor: Colors.black,
                ),
                Text(
                  "John Doe",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            margin: EdgeInsets.only(top: 30),
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.red.shade300, Colors.orange.shade200])),
          ),
          Expanded(
            //LOGOUT YOURINFO YOURDOCTOR SETTINGS
            child: GridView.count(
              physics: NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(50),
              crossAxisSpacing: 20,
              mainAxisSpacing: 15,
              crossAxisCount: 2,
              children: <Widget>[
                Align(
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset:
                                Offset(10, -5), // changes position of shadow
                          ),
                        ],
                      ),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.calendar_today,
                            color: Colors.red,
                            size: 50,
                          ),
                          Text(
                            "Book an Appointment",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.italic,
                              fontSize: 20,
                              color: Colors.orange.shade500,
                            ),
                          )
                        ],
                      )),
                ),
                Align(
                  child: GestureDetector(
                    onTap: () => {
                      {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return docProfilePage();
                        }))
                      }
                    },
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(10, -5), // changes position of shadow
                            ),
                          ],
                        ),
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.person,
                              color: Colors.blue.shade300,
                              size: 50,
                            ),
                            Text(
                              "Your Doctor",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 20,
                                color: Colors.orange.shade500,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        )),
                  ),
                ),
                Align(
                  child: GestureDetector(
                    onTap: () => {
                      {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return aboutPage();
                        }))
                      }
                    },
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          //Theme.of(context).,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(10, -5), // changes position of shadow
                            ),
                          ],
                        ),
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.info_outline,
                              color: Colors.green,
                              size: 50,
                            ),
                            Text(
                              "About the App",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 20,
                                color: Colors.orange.shade500,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        )),
                  ),
                ),
                Align(
                  child: GestureDetector(
                    onTap: () => {
                      {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return homeScreen();
                        }))
                      }
                    },
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(10, -5), // changes position of shadow
                            ),
                          ],
                        ),
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.exit_to_app,
                              size: 50,
                            ),
                            Text(
                              "Logout",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 20,
                                color: Colors.orange.shade500,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        )),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
