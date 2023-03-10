import 'package:dcftrust/controllers/headercontroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

final HeaderController headerController = Get.find();
Padding headerItem(String text, bool hover, bool active) {
  return Padding(
    padding: const EdgeInsets.only(right: 25),
    child: Container(
      padding: const EdgeInsets.all(10),
      color: hover || active ? Colors.grey.shade300 : Colors.transparent,
      child: Text(
        text,
        style: TextStyle(
            fontSize: 18,
            color: hover || active ? Colors.black : Colors.black87),
      ).animate().fadeIn(duration: 1000.ms, delay: 0.ms, curve: Curves.easeOut),
    ),
  );
}

Padding headerItemDrawer(String text, bool hover, bool active) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20),
    child: Container(
      padding: const EdgeInsets.all(10),
      color: hover || active ? Colors.grey.shade300 : Colors.transparent,
      child: Text(
        text,
        style: TextStyle(
            fontSize: 18, color: hover || active ? Colors.black : null),
      ).animate().fadeIn(duration: 1000.ms, delay: 0.ms, curve: Curves.easeOut),
    ),
  );
}
