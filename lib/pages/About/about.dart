import 'package:dcftrust/constants/header.dart';
import 'package:dcftrust/widgets/appbar.dart';
import 'package:dcftrust/widgets/end_drawer.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    headerController.changeActiveAbout();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      endDrawer: EndDrawer(headerController: headerController),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: Header(
          key1: _key,
          headerController: headerController,
          cont: context,
        ),
      ),
      body: Container(
        color: Colors.green,
      ),
    );
  }
}
