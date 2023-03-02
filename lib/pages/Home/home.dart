import 'package:dcftrust/constants/responsive.dart';
import 'package:dcftrust/controllers/headercontroller.dart';
import 'package:dcftrust/pages/Home/widget/home_large.dart';
import 'package:dcftrust/pages/Home/widget/home_medium.dart';
import 'package:dcftrust/pages/Home/widget/home_small.dart';
import 'package:dcftrust/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HeaderController headerController = Get.find();
  @override
  void initState() {
    headerController.changeActiveHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100.0),
          child: Header(
            headerController: headerController,
            cont: context,
          )),
      body: LayoutBuilder(builder: (context, constraints) {
        double width = MediaQuery.of(context).size.width;
        if (width >= largeScreenSize) {
          return const HomeLarge();
        } else if (width < largeScreenSize && width >= mediumScreenSize) {
          return const HomeMedium();
        } else {
          return const HomeSmall();
        }
      }),
    );
  }
}
