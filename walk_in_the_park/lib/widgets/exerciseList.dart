import 'package:flutter/material.dart';
import 'package:walk_in_the_park/main.dart';
import 'package:walk_in_the_park/models/exercise.dart';
import 'package:walk_in_the_park/screens/exerciseDetailPage.dart';

class exerciseList extends StatefulWidget {
  String name;
  String description;
  String briefDescription;
  Exercises exercises;

  exerciseList(
      {required this.name,
      required this.description,
      required this.briefDescription,
      required this.exercises});

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
          ); //CHATDETAILPAGE
        }));
      },
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.black,
              maxRadius: 30,
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
