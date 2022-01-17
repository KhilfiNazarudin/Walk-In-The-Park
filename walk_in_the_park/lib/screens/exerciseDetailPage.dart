import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:walk_in_the_park/models/exercise.dart';

class exerciseDetailsPage extends StatefulWidget {
  Exercises exercises;

  exerciseDetailsPage({Key? key, required this.exercises}) : super(key: key);

  @override
  _exerciseDetailsPageState createState() => _exerciseDetailsPageState();
}

class _exerciseDetailsPageState extends State<exerciseDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.exercises.name),
      ),
      body: Column(
        children: [
          Text(
            widget.exercises.name,
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),
          Spacer(),
          Text(
            widget.exercises.description,
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
