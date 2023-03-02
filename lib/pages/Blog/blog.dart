import 'package:dcftrust/constants/header.dart';
import 'package:dcftrust/widgets/appbar.dart';
import 'package:flutter/material.dart';

class Blog extends StatefulWidget {
  const Blog({super.key});

  @override
  State<Blog> createState() => _BlogState();
}

class _BlogState extends State<Blog> {
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
        color: Colors.brown,
      ),
    );
  }
}
