import 'dart:ui';

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
              Text(
                widget.exercises.name,
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
              Image(image: AssetImage(widget.image)),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  widget.exercises.description,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          )),
    );
  }
}
