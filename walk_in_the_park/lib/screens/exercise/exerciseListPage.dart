import 'package:flutter/material.dart';
import 'package:walk_in_the_park/models/exercise.dart';
import 'package:walk_in_the_park/widgets/exerciseList.dart';

class exerciseListPage extends StatefulWidget {
  exerciseListPage({Key? key}) : super(key: key);

  @override
  _exerciseListPageState createState() => _exerciseListPageState();
}

class _exerciseListPageState extends State<exerciseListPage> {
  //CONNECT TO DATABASE TO CREATE A LIST OF EXERCISES
  List<Exercises> exercises = [
    Exercises(
        'Aerobics',
        'Exercose that mixes strength and flexibility training',
        'Aerobics is a form of physical exercise that combines rhythmic aerobic exercise with stretching and strength training routines with the goal of improving all elements of fitness (flexibility, muscular strength, and cardio-vascular fitness). It is usually performed to music and may be practiced in a group setting led by an instructor (fitness professional), although it can be done solo and without musical accompaniment.',
        'images/aerobic.jpg'),
    Exercises(
        "Strength",
        "A strength exercise is any activity that makes your muscles work harder than usual. ",
        "Strength training exercises work your muscles by applying a resistance against which the muscles need to exert a force. The aim is to use an appropriate weight or resistant force that will work the target muscles to fatigue, over 8 to 12 repetitions of an exercise.",
        "images/strength.jpg"),
    Exercises(
        "Balance and Agility",
        "Exercises to improve speed and stability ",
        "Agility simply means the speed with which a child performs a movement. We speak of agility and nimbleness together (remember Jack and the candle). Balance means poising or standing still on a point or a small base. In other words, when a child is standing still on her tiptoes, she is balanced. Of course, in order to balance, she must have the strength to get up on her toes and the coordination to remain there in order to be balanced for any length of time.",
        "images/balance.jpg"),
    Exercises(
        "Flexibility",
        "Exercises to improve the joint movements",
        "Flexibility is the ability of a joint or series of joints to move through an unrestricted, pain free range of motion. Although flexibility varies widely from person to person, minimum ranges are necessary for maintaining joint and total body health. Many variables affect the loss of normal joint flexibility including injury, inactivity or a lack of stretching. The range of motion will be influenced by the mobility of the soft tissues that surround the joint.",
        "images/flexible.jpg")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Exercises",
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.pink[50],
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.add,
                            color: Colors.pink,
                            size: 20,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            "Add New",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Colors.grey.shade600),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.shade600,
                    size: 20,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.grey.shade100)),
                ),
              ),
            ),
            ListView.builder(
              itemCount: exercises.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return exerciseList(
                  name: exercises[index].name,
                  description: exercises[index].description,
                  briefDescription: exercises[index].briefDescription,
                  exercises: exercises[index],
                  img: exercises[index].img,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
