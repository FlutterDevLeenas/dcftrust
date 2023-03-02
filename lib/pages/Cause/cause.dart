import 'package:dcftrust/constants/header.dart';
import 'package:dcftrust/widgets/appbar.dart';
import 'package:flutter/material.dart';

class Cause extends StatefulWidget {
  const Cause({super.key});

  @override
  State<Cause> createState() => _CauseState();
}

class _CauseState extends State<Cause> {
  @override
  void initState() {
    headerController.changeActiveCause();

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
        color: Colors.red,
      ),
    );
  }
}
