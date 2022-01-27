import 'package:flutter/material.dart';
import 'package:walk_in_the_park/screens/login_reg/homeScreen.dart';

class profilePage extends StatefulWidget {
  profilePage({Key? key}) : super(key: key);

  @override
  _profilePageState createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CircleAvatar(
                    radius: 50,
                    //backgroundImage: AssetImage('images/profile/superhero.jpg'),
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
                      begin: Alignment.centerLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.red.shade300, Colors.yellow.shade200])),
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
                          //Theme.of(context).,
                          color: Colors.red[300],
                        ),
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.info,
                              size: 50,
                            ),
                            Text(
                              "Edit your information",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 20,
                              ),
                            )
                          ],
                        )),
                  ),
                  Align(
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.orangeAccent[100],
                        ),
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.person,
                              size: 50,
                            ),
                            Text(
                              "Your Doctor",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 20,
                              ),
                            )
                          ],
                        )),
                  ),
                  Align(
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red[300],
                        ),
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.settings,
                              size: 50,
                            ),
                            Text(
                              "Settings",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 20,
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
                            return homeScreen();
                          }))
                        }
                      },
                      child: Container(
                          height: MediaQuery.of(context).size.height * 0.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orangeAccent[100],
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
      ),
    );
  }
}
