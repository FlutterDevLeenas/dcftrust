import 'package:dcftrust/pages/About/about.dart';
import 'package:dcftrust/pages/Blog/blog.dart';
import 'package:dcftrust/pages/Cause/cause.dart';
import 'package:dcftrust/pages/Contact/contact.dart';
import 'package:dcftrust/pages/Home/home.dart';
import 'package:dcftrust/pages/Projects/projects.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

appRoutes() => [
      GetPage(
        name: '/',
        page: () => Home(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 100),
      ),
      GetPage(
        name: '/about',
        page: () => const About(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 100),
      ),
      GetPage(
        name: '/cause',
        page: () => const Cause(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 100),
      ),
      GetPage(
        name: '/projects',
        page: () => const Projects(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 100),
      ),
      GetPage(
        name: '/blog',
        page: () => const Blog(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 100),
      ),
      GetPage(
        name: '/contact',
        page: () => const Contact(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 100),
      ),
    ];

class AppRouterDelegate extends GetDelegate {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onPopPage: (route, result) => route.didPop(result),
      pages: currentConfiguration != null
          ? [currentConfiguration!.currentPage!]
          : [GetNavConfig.fromRoute('/')!.currentPage!],
    );
  }
}
