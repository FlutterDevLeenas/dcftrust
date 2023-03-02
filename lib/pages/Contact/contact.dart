import 'package:dcftrust/constants/header.dart';
import 'package:dcftrust/widgets/appbar.dart';
import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  void initState() {
    headerController.changeActiveBlog();
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
        color: Colors.pink,
      ),
    );
  }
}
