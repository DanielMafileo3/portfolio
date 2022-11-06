// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:portfolio/ui/contact.dart';
import 'package:portfolio/ui/footer.dart';
import 'package:portfolio/ui/introduction.dart';
import 'package:portfolio/ui/mywork.dart';
import 'package:portfolio/ui/resume.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final itemController = ItemScrollController();

  List<Widget> pages = [
    Introduction(),
    MyWork(),
    Resume(),
    Contact(),
    Footer(),
  ];

  void scrollToItem(int index) {
    itemController.scrollTo(
      index: index,
      duration: Duration(milliseconds: 500),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (ontext, innerBoxIsScrolled) => [
          SliverAppBar(
            floating: true,
            backgroundColor: Colors.white,
            pinned: false,
            centerTitle: false,
            title: Text(
              textAlign: TextAlign.start,
              "Taniela Mafile'o",
              style: TextStyle(color: Color.fromARGB(255, 0, 44, 121)),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 40,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        scrollToItem(0);
                      },
                      child: Text(
                        "About Me",
                        style: TextStyle(color: Colors.black87),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        scrollToItem(1);
                      },
                      child: Text(
                        "My Work",
                        style: TextStyle(color: Colors.black87),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        scrollToItem(2);
                      },
                      child: Text(
                        "Resume",
                        style: TextStyle(color: Colors.black87),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        scrollToItem(3);
                      },
                      child: Text(
                        "Contact",
                        style: TextStyle(color: Colors.black87),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
        body: ScrollablePositionedList.builder(
          itemScrollController: itemController,
          itemCount: pages.length,
          itemBuilder: (context, index) {
            return pages[index];
          },
        ),
      ),
    );
  }
}
