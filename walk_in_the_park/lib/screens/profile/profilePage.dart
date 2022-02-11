import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
  final nameEditor = TextEditingController();
  final pictureEditor = TextEditingController();

  String appt = "You have no appointments booked";
  bool booked = false;
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  String name = "John Doe";
  String profilePicture = 'images/superhero.jpg';

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101),
        helpText: "SELECT APPOINTMENT DATE",
        confirmText: "Book");
    print(picked.toString());
    if (picked != null)
      setState(() {
        selectedDate = picked;
        _selectTime(context);
      });
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    print(timeOfDay.toString());
    if (timeOfDay != null) {
      setState(() {
        selectedTime = timeOfDay;
        booked = !booked;
        if (booked == true) {
          DateTime bookedTime = DateTime(selectedDate.year, selectedDate.month,
              selectedDate.day, selectedTime.hour, selectedTime.minute);
          print(bookedTime.toString());
          String formattedDate = DateFormat.yMd().add_jm().format(bookedTime);
          appt = "Appointment booked on " + formattedDate;
        }
      });
    }
  }

  Future<void> editName(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Change name'),
          content: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    onChanged: (value) {
                      setState(() {
                        nameEditor.clear();
                        name = value;
                      });
                    },
                    controller: nameEditor,
                    decoration: InputDecoration(hintText: "New name"),
                  ),
                ],
              ),
            ),
          ),
          actions: <Widget>[
            FlatButton(
              color: Colors.red,
              textColor: Colors.white,
              child: Text('Cancel'),
              onPressed: () {
                setState(() {
                  Navigator.pop(context);
                });
              },
            ),
            FlatButton(
              color: Colors.green,
              textColor: Colors.white,
              child: Text('Change name'),
              onPressed: () {
                setState(() {
                  nameEditor.clear();
                  Navigator.pop(context);
                });
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> changePhoto(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Change profile photo'),
          content: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    controller: pictureEditor,
                    decoration:
                        InputDecoration(hintText: "New profile picture path"),
                  ),
                ],
              ),
            ),
          ),
          actions: <Widget>[
            FlatButton(
              color: Colors.red,
              textColor: Colors.white,
              child: Text('Cancel'),
              onPressed: () {
                setState(() {
                  pictureEditor.clear();
                  Navigator.pop(context);
                });
              },
            ),
            FlatButton(
              color: Colors.green,
              textColor: Colors.white,
              child: Text('Change profile picture'),
              onPressed: () {
                setState(() {
                  profilePicture = pictureEditor.text;
                  pictureEditor.clear();
                  Navigator.pop(context);
                });
              },
            ),
          ],
        );
      },
    );
  }

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
                GestureDetector(
                  onTap: () => setState(() {
                    changePhoto(context);
                  }),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(profilePicture),
                    backgroundColor: Colors.black,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () => {
                              setState(() {
                                editName(context);
                              })
                            },
                        icon: Icon(Icons.edit))
                  ],
                ),
                Text(appt),
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
                  child: Builder(builder: (context) {
                    return GestureDetector(
                      onTap: () => {_selectDate(context)},
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
                                offset: Offset(
                                    10, -5), // changes position of shadow
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
                    );
                  }),
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
