// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class MyWork extends StatefulWidget {
  const MyWork({Key? key}) : super(key: key);

  @override
  State<MyWork> createState() => _MyWorkState();
}

class _MyWorkState extends State<MyWork> {
  Widget appDownloadButton(String btnName, String link, Color btnColor,
      IconData icon, Color btnTextColor) {
    return Link(
      target: LinkTarget.blank,
      uri: Uri.parse(link),
      builder: (context, followlink) => ElevatedButton(
        onPressed: followlink,
        style: ElevatedButton.styleFrom(
          side: BorderSide(
            color: Colors.black26,
            width: 2,
          ),
          backgroundColor: btnColor,
          foregroundColor: btnTextColor,
          fixedSize: Size(220, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon),
            Text(
              btnName,
              style: TextStyle(
                color: btnTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget appDescriptions(
    String appName,
    String description,
    String reviews,
    double nameSize,
    double descSize,
    double ratingSize,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          appName,
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: nameSize,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          description,
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: descSize,
          ),
        ),
        Text(
          reviews,
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: ratingSize,
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      alignment: Alignment.center,
      width: width,
      height: width < 800 ? null : height,
      decoration: BoxDecoration(
        color: Color.fromARGB(221, 255, 255, 255),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "My Work",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 44, 121),
                fontSize: width < 900 ? 30 : 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: width < 900 ? 20 : 100,
            ),
            Center(
              child: width < 900
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            SizedBox(
                              width: 450,
                            ),
                            SizedBox(
                              height: 250,
                              width: 250,
                              child: Card(
                                color: Colors.blueAccent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 100,
                              child: Container(
                                height: 200,
                                width: 400,
                                child: Row(
                                  children: [
                                    Image.asset(
                                        "assets/images/SttHymnApp/Welcome.png"),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset(
                                        "assets/images/SttHymnApp/Hymn.png"),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "April 2020",
                              style: TextStyle(fontSize: 15),
                            ),
                            appDescriptions(
                                "Siasi 'O Tonga Tau'ataina Himi - App",
                                "A Tongan Hymn built into a mobile app using Flutter.",
                                "4.9 star rating from 118 reviews & 10k downloads",
                                18,
                                15,
                                15),
                            SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: appDownloadButton(
                                  "Download for Android",
                                  "https://play.google.com/store/apps/details?id=utoltechnologies.hymnappstt",
                                  Colors.greenAccent,
                                  Icons.android_rounded,
                                  Colors.black45),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: appDownloadButton(
                                  "Download for Apple",
                                  "https://apps.apple.com/app/siasi-o-tonga-tauataina-hymn/id1630288366?fbclid=IwAR24Uueww3NVuoPNE1crYDNHPIcLQ3Z9l2u8abuqEJj-mOduiV7c_Lbp6eo",
                                  Colors.white60,
                                  Icons.apple,
                                  Colors.black45),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: appDownloadButton(
                                  "GitHub Code",
                                  "https://github.com/DanielMafileo3/TonganHymn",
                                  Colors.purpleAccent,
                                  MdiIcons.github,
                                  Colors.white),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            SizedBox(
                              width: 450,
                            ),
                            SizedBox(
                              height: 350,
                              width: 350,
                              child: Card(
                                color: Colors.blueAccent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 150,
                              child: Container(
                                height: 300,
                                width: 500,
                                child: Row(
                                  children: [
                                    Image.asset(
                                        "assets/images/SttHymnApp/Welcome.png"),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset(
                                        "assets/images/SttHymnApp/Hymn.png"),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "April 2020",
                              style: TextStyle(fontSize: 15),
                            ),
                            appDescriptions(
                                "Siasi 'O Tonga Tau'ataina Himi - App",
                                "A Tongan Hymn built into a mobile app using Flutter.",
                                "4.9 star rating from 118 reviews & 10k downloads",
                                25,
                                18,
                                18),
                            appDownloadButton(
                                "Download for Android",
                                "https://play.google.com/store/apps/details?id=utoltechnologies.hymnappstt",
                                Colors.greenAccent,
                                Icons.android_rounded,
                                Colors.black45),
                            SizedBox(
                              height: 10,
                            ),
                            appDownloadButton(
                                "Download for Apple",
                                "https://apps.apple.com/app/siasi-o-tonga-tauataina-hymn/id1630288366?fbclid=IwAR24Uueww3NVuoPNE1crYDNHPIcLQ3Z9l2u8abuqEJj-mOduiV7c_Lbp6eo",
                                Colors.white60,
                                Icons.apple,
                                Colors.black45),
                            SizedBox(
                              height: 10,
                            ),
                            appDownloadButton(
                                "GitHub Code",
                                "https://github.com/DanielMafileo3/TonganHymn",
                                Colors.purpleAccent,
                                MdiIcons.github,
                                Colors.white),
                          ],
                        ),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
