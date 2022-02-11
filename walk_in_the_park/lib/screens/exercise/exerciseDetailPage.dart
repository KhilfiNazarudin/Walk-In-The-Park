import 'package:flutter/material.dart';
import 'package:walk_in_the_park/models/exercise.dart';

class exerciseDetailsPage extends StatefulWidget {
  Exercises exercises;
  String image;

  exerciseDetailsPage({Key? key, required this.exercises, required this.image})
      : super(key: key);

  @override
  _exerciseDetailsPageState createState() => _exerciseDetailsPageState();
}

class _exerciseDetailsPageState extends State<exerciseDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade300,
        title: Text(widget.exercises.name),
      ),
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(50),
                child: Text(
                  widget.exercises.name,
                  style: TextStyle(
                    fontSize: 30,
                    //fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.image), fit: BoxFit.contain),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(50),
                child: Text(
                  widget.exercises.description,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          )),
    );
  }
}
