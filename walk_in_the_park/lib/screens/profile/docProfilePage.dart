import 'package:flutter/material.dart';
import 'package:walk_in_the_park/screens/chats/chatListPage.dart';
import 'package:walk_in_the_park/screens/login_reg/homeScreen.dart';
import 'package:walk_in_the_park/screens/profile/aboutPage.dart';

class docProfilePage extends StatelessWidget {
  const docProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade300,
        title: Text("About page"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "Available on weekdays 9:00am - 5:00pm",
                style: TextStyle(color: Colors.green),
              ),
            ),
            ListTile(
              title: Text(
                "Dr. Md Khilfi Bin Md Nazarudin",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Parkinson's doctor"),
              trailing: Container(
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage("images/doctor.jpg"))),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: Text(
                      "5.0 stars",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: Text("500 Patients review"),
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(
                    color: Colors.green.shade100,
                    child: Icon(
                      Icons.phone,
                      color: Colors.green.shade900,
                    ),
                    onPressed: () => {
                      {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return docProfilePage();
                        }))
                      }
                    },
                  ),
                  RaisedButton(
                    color: Colors.blue.shade100,
                    child: Icon(
                      Icons.message,
                      color: Colors.blue.shade900,
                    ),
                    onPressed: () => {
                      {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ChatPage();
                        }))
                      }
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              //LOGOUT YOURINFO YOURDOCTOR SETTINGS
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.only(left: 50, right: 50, top: 20),
                crossAxisSpacing: 20,
                mainAxisSpacing: 15,
                crossAxisCount: 2,
                children: <Widget>[
                  Align(
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.people,
                              color: Colors.green,
                              size: 50,
                            ),
                            Text(
                              "1000+",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontSize: 20,
                              ),
                            ),
                            Text("Treated patients")
                          ],
                        )),
                  ),
                  Align(
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.medical_services_outlined,
                              color: Colors.blue,
                              size: 50,
                            ),
                            Text(
                              "15 years",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontSize: 20,
                              ),
                            ),
                            Text("Experience")
                          ],
                        )),
                  ),
                  Align(
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
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.local_hospital_outlined,
                              color: Colors.red,
                              size: 50,
                            ),
                            Text(
                              "3+",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontSize: 20,
                              ),
                            ),
                            Text("Worked hospitals")
                          ],
                        )),
                  ),
                  Align(
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.folder_open,
                              color: Colors.amber,
                              size: 50,
                            ),
                            Text(
                              "25+",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text("National awards"),
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
