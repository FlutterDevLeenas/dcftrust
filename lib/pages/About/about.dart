import 'package:dcftrust/constants/header.dart';
import 'package:dcftrust/widgets/appbar.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  void initState() {
    headerController.changeActiveAbout();

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
        ),
      ),
      body: Container(
        color: Colors.green,
      ),
    );
  }
}
