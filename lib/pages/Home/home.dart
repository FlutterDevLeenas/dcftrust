import 'package:dcftrust/constants/header.dart';
import 'package:dcftrust/constants/responsive.dart';
import 'package:dcftrust/pages/Home/widget/home_large.dart';
import 'package:dcftrust/pages/Home/widget/home_medium.dart';
import 'package:dcftrust/pages/Home/widget/home_small.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    headerController.changeActiveHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double width = constraints.maxWidth;
      if (width >= largeScreenSize) {
        return HomeLarge();
      } else if (width < largeScreenSize && width >= mediumScreenSize) {
        return HomeMedium();
      } else {
        return HomeSmall();
      }
    });
  }
}
