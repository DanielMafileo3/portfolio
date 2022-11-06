import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio/model/app_colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: 100,
      color: AppColors.navyBlue,
      child: Center(
        child: const Text(
          "Copyright © 2022, Taniela Tu'ipulotu Mafile'o",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
