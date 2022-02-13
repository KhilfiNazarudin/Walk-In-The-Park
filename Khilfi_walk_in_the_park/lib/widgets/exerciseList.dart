import 'package:flutter/material.dart';
import 'package:walk_in_the_park/models/exercise.dart';
import 'package:walk_in_the_park/screens/exercise/exerciseDetailPage.dart';

class exerciseList extends StatefulWidget {
  String name;
  String description;
  String briefDescription;
  Exercises exercises;
  String img;

  exerciseList(
      {required this.name,
      required this.description,
      required this.briefDescription,
      required this.exercises,
      required this.img});

  @override
  _exerciseListState createState() => _exerciseListState();
}

class _exerciseListState extends State<exerciseList> {
  var exercises;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return exerciseDetailsPage(
            exercises: widget.exercises,
            image: widget.img,
          ); //CHATDETAILPAGE
        }));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.orange.shade100,
                  Colors.orange.shade300,
                ])),
        padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
        margin: EdgeInsets.all(15),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('${widget.img}'),
              backgroundColor: Colors.black,
              radius: 50,
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Container(
                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.name,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      widget.briefDescription,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
