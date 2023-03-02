import 'package:dcftrust/constants/header.dart';
import 'package:dcftrust/widgets/appbar.dart';
import 'package:flutter/material.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  void initState() {
    headerController.changeActiveProjects();

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
        color: Colors.blue,
      ),
    );
  }
}
