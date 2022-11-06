// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/link.dart';

class Resume extends StatefulWidget {
  const Resume({super.key});

  @override
  State<Resume> createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      alignment: Alignment.center,
      width: width,
      height: width < 900 ? null : height,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blueAccent,
          width < 900 ? Color.fromARGB(255, 0, 44, 121) : Colors.white
        ]),
        // color: Colors.blueAccent,
      ),
      child: Padding(
        padding: const EdgeInsets.all(50),
        child: width < 1100
            ? Column(
                children: [
                  Text(
                    "Experience",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          "April 2022 - Now",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                      Text(
                        "Local Marketing Group",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      Center(
                        child: Text(
                          "Brisbane, QLD Australia",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 500,
                        child: Text(
                          textAlign: TextAlign.center,
                          "At Local Marting Group, I'm currently working as a Software Developer, working in mobile applications using Flutter and also working in web applications.",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse(
                        "https://teamblm.com.au/?fbclid=IwAR2HcfLh8n_CAge6gnas8BYSYnWJkMl-QRcNE2zdRK3A0YcK8_-DPNCkl_4"),
                    builder: (context, followlink) => GestureDetector(
                      onTap: followlink,
                      child: Container(
                        height: 200,
                        width: 500,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/me/work1.png"),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            : Column(
                children: [
                  Text(
                    "Experience",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 44, 121),
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "April 2022 - Now",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          Text(
                            "Local Marketing Group",
                            style: TextStyle(fontSize: 40, color: Colors.white),
                          ),
                          Text(
                            "Brisbane, QLD Australia",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 500,
                            child: Text(
                              "At Local Marting Group, I'm currently working as a Software Developer, working in mobile applications using Flutter and also working in web applications.",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse(
                            "https://teamblm.com.au/?fbclid=IwAR2HcfLh8n_CAge6gnas8BYSYnWJkMl-QRcNE2zdRK3A0YcK8_-DPNCkl_4"),
                        builder: (context, followlink) => GestureDetector(
                          onTap: followlink,
                          child: Container(
                            height: 300,
                            width: 500,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/me/work1.png"),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
      ),
    );
  }
}
