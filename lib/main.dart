import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/model/app_colors.dart';
import 'package:portfolio/ui/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taniela Mafile\'o',
      theme: ThemeData(
          primarySwatch: AppColors.navyBlue,
          textTheme: GoogleFonts.titilliumWebTextTheme()),
      home: const Home(),
    );
  }
}
