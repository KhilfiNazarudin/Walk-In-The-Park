import 'package:flutter/material.dart';

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
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("images/profile/superhero.jpg"),
                    backgroundColor: Colors.black,
                  ),
                  Text("John Doe"),
                ],
              ),
              margin: EdgeInsets.only(top: 30),
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.amberAccent,
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [Colors.deepPurple, Colors.blue])),
            ),
            Expanded(
              //LOGOUT YOURINFO YOURDOCTOR SETTINGS
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(50),
                crossAxisSpacing: 20,
                mainAxisSpacing: 30,
                crossAxisCount: 2,
                children: <Widget>[
                  Align(
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.indigo[300],
                        ),
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(8),
                        child: Column(
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
