import 'package:dcftrust/controllers/headercontroller.dart';
import 'package:dcftrust/routing/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final HeaderController headerController = Get.put(HeaderController());
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      title: 'Divine Charitable Foundation Trust',
      debugShowCheckedModeBanner: false,
      getPages: appRoutes(),
      routerDelegate: AppRouterDelegate(),
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.deepOrange[400],
          hoverColor: Colors.deepOrange,
        ),
        textTheme:
            GoogleFonts.quattrocentoSansTextTheme(Theme.of(context).textTheme)
                .apply(bodyColor: Colors.black),
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.deepOrange,
      ),
    );
  }
}
