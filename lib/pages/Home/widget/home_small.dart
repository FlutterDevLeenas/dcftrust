import 'package:dcftrust/controllers/headercontroller.dart';
import 'package:dcftrust/widgets/appbar.dart';
import 'package:dcftrust/widgets/end_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeSmall extends StatelessWidget {
  HomeSmall({super.key});
  final HeaderController headerController = Get.find();

  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      endDrawer: EndDrawer(headerController: headerController),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: Header(
          key1: _key,
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
