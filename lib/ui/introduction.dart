// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Introduction extends StatefulWidget {
  const Introduction({Key? key}) : super(key: key);

  @override
  State<Introduction> createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height,
      width: width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blueAccent, Colors.white],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: Center(
        child: width < 800
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 3),
                      image: DecorationImage(
                          image: AssetImage("assets/images/me/firstImage.jpg"),
                          fit: BoxFit.cover),
                      color: Color.fromARGB(255, 0, 0, 0),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: SizedBox(
                      width: width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          //Text("$width"),
                          Center(
                            child: Text(
                              "Taniela Tu'ipulotu Mafile'o",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 44, 121),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            "I am a Mobile App Developer",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 44, 121),
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                          SizedBox(
                            height: 20,
                          ),

                          Text(
                            textAlign: TextAlign.center,
                            "Hi. I'm Taniela Mafile'o. I am a Flutter Developer and having already built two apps with Flutter that are now on the Google Play Store. Using Flutter I am able to build multiple apps for different devices including this website for my portfolio.",
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 20),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            "If you have a project in mind feel free to contact me.",
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            : SizedBox(
                //color: Colors.blueAccent,
                height: height * .70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 3),
                        image: DecorationImage(
                            image:
                                AssetImage("assets/images/me/firstImage.jpg"),
                            fit: BoxFit.cover),
                        color: Color.fromARGB(255, 0, 0, 0),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, right: 0),
                      child: SizedBox(
                        width: width * .4,
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Taniela Tu'ipulotu Mafile'o",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 44, 121),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "I am a Mobile App Developer",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 44, 121),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 60),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Hi. I'm Taniela Tu'iplotu Mafile'o. I am a mobile application developer that's being using Flutter since 2019. I have built multiple Android and iOS apps with Flutter, for work and personal apps. Two of my apps are avaliable on Google Play Store and the App Store. Using Flutter I am able to build multiple apps for different devices including this website for my portfolio.",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "If you have an app in mind feel free to contact me.",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
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
