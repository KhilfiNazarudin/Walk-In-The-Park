import 'package:flutter/material.dart';

class aboutPage extends StatelessWidget {
  const aboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade300,
        title: Text("About page"),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 350,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.orange.shade300,
                            Colors.red.shade300,
                          ]),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            "About the Application",
                            style: TextStyle(color: Colors.white, fontSize: 40),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            height: 200,
                            width: 200,
                            //child: Icon(Icons.),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.contain,
                                    image: AssetImage("images/flexible.jpg"))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            "There is not much mobile application that only focusses on one specific disease. Usually, these kinds of applications have a broader scope, thus leaving out the people with rare conditions. As to why I pick Parkinson’s disease is because it is somewhat a rare disease that you don’t get to see every day.",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 350,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.orange.shade300,
                            Colors.red,
                          ]),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            "Parkinsons society Singapore",
                            style: TextStyle(color: Colors.white, fontSize: 40),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                              child:
                                  Image(image: AssetImage("images/psss.jpg"))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            "The Parkinson Society Singapore (PSS) was formed on 16 December 1996 by a group of doctors and caregivers to help people living with Parkinson. The society was registered as a charity on 28 January 2000 and is a member of National Council of Social Service (NCSS). ",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            " Since then, the Society has organized a number of programmes including annual public forums, therapeutic exercise programmes and social and recreational activities, aimed at improving the lives of people with Parkinson. The Society also works closely with support groups in various hospitals and publishes newsletters and books to raise the awareness of Parkinson. In Singapore, about 6,000 to 8,000 people have Parkinson and related conditions and this number is expected to go up in a rapidly aging population.",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 350,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.orange.shade300,
                            Colors.red,
                          ]),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            "About the Developer",
                            style: TextStyle(color: Colors.white, fontSize: 40),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            height: 200,
                            width: 200,
                            //child: Icon(Icons.),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.contain,
                                    image: AssetImage("images/doctor.jpg"))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            "Hi I am Khilfi Nazarudin from Nanyang Polytechnic. I am from L1 admin number 201945D. This application is done for my Mobile Application Development project in Year 2 Semester 2",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
