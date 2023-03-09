import 'package:dcftrust/constants/header.dart';
import 'package:dcftrust/constants/responsive.dart';
import 'package:dcftrust/controllers/headercontroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.headerController,
    required this.cont,
    required this.key1,
  });

  final HeaderController headerController;
  final BuildContext cont;
  final GlobalKey<ScaffoldState> key1;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      var width = constraints.maxWidth;
      if (width >= largeScreenSize) {
        return AppBar(
          // elevation: 0.0,
          toolbarHeight: 100.0,
          // flexibleSpace: const Opacity(
          //   opacity: 0.5,
          //   child: Image(
          //     image: AssetImage('assets/header-bg.jpg'),
          //     fit: BoxFit.cover,
          //   ),
          // ),
          actions: [
            Container(),
          ],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  SizedBox(
                    height: 80.0,
                    width: 120.0,
                    child: Image(
                      image: AssetImage('assets/divelogo.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('Divine Charitable Foundation Trust',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.green))
                ],
              ),
              Obx(() {
                return Row(
                  children: [
                    InkWell(
                      hoverColor: Colors.transparent,
                      onTap: () {
                        Get.rootDelegate.toNamed('/');
                      },
                      onHover: (value) {
                        headerController.changeHoverHome(value);
                      },
                      child: headerItem(
                          "Home",
                          headerController.onHoverhome.value,
                          headerController.home),
                    ),
                    InkWell(
                        hoverColor: Colors.transparent,
                        onTap: () {
                          Get.rootDelegate.toNamed('/about');
                        },
                        onHover: (value) {
                          headerController.changeHoverAbout(value);
                        },
                        child: headerItem(
                            "About Us",
                            headerController.onHoverabout.value,
                            headerController.about)),
                    InkWell(
                        hoverColor: Colors.transparent,
                        onTap: () {
                          Get.rootDelegate.toNamed('/cause');
                        },
                        onHover: (value) {
                          headerController.changeHoverCause(value);
                        },
                        child: headerItem(
                            "Cause",
                            headerController.onHovercause.value,
                            headerController.cause)),
                    InkWell(
                      hoverColor: Colors.transparent,
                      onTap: () {
                        Get.rootDelegate.toNamed('/projects');
                      },
                      onHover: (value) {
                        headerController.changeHoverProject(value);
                      },
                      child: headerItem(
                          "Projects",
                          headerController.onHoverprojects.value,
                          headerController.project),
                    ),
                    InkWell(
                        hoverColor: Colors.transparent,
                        onTap: () {
                          Get.rootDelegate.toNamed('/blog');
                        },
                        onHover: (value) {
                          headerController.changeHoverBlog(value);
                        },
                        child: headerItem(
                            "Blog",
                            headerController.onHoverblog.value,
                            headerController.blog)),
                    InkWell(
                      hoverColor: Colors.transparent,
                      onTap: () {
                        Get.rootDelegate.toNamed('/contact');
                      },
                      onHover: (value) {
                        headerController.changeHoverContact(value);
                      },
                      child: headerItem(
                          "Contact Us",
                          headerController.onHovercontact.value,
                          headerController.contact),
                    ),
                    ElevatedButton(
                      onHover: (value) {},
                      onPressed: () {},
                      child: const Text(
                        'Donate',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    )
                        .animate()
                        .fade(
                            duration: 1000.ms,
                            delay: 500.ms,
                            curve: Curves.easeOut)
                        .slide()
                        .shake(hz: 3)
                        .shimmer(
                            delay: const Duration(
                              seconds: 2,
                            ),
                            duration: const Duration(seconds: 5),
                            curve: Curves.easeOut),
                  ],
                );
              })
            ],
          ),
          backgroundColor: Colors.white,
        );
      } else {
        return AppBar(
          // elevation: 0.0,
          toolbarHeight: width <= mediumScreenSize && width > largeScreenSize
              ? 90.0
              : width >= smallScreenSize && width < mediumScreenSize
                  ? 70.0
                  : 60.0,
          // flexibleSpace: const Opacity(
          //   opacity: 0.5,
          //   child: Image(
          //     image: AssetImage('assets/header-bg.jpg'),
          //     fit: BoxFit.cover,
          //   ),
          // ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: width >= mediumScreenSize && width < largeScreenSize
                    ? 15.0
                    : width >= smallScreenSize && width < mediumScreenSize
                        ? 10.0
                        : 8.0,
              ),
              Row(
                children: [
                  SizedBox(
                    height: width >= mediumScreenSize && width < largeScreenSize
                        ? 50.0
                        : width >= smallScreenSize && width < mediumScreenSize
                            ? 50.0
                            : 40.0,
                    width: width >= mediumScreenSize && width < largeScreenSize
                        ? 60.0
                        : width >= smallScreenSize && width < mediumScreenSize
                            ? 50.0
                            : 40.0,
                    child: const Image(
                      image: AssetImage('assets/divelogo.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  width >= mediumScreenSize && width < largeScreenSize
                      ? const Text('Divine Charitable Foundation Trust',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green))
                      : width >= smallScreenSize && width < mediumScreenSize
                          ? const Text('Divine Charitable\nFoundation Trust',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green))
                          : const Text('Divine Charitable\nFoundation Trust',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green)),
                ],
              ),
            ],
          ),
          actions: [
            SizedBox(
              height: width >= mediumScreenSize && width < largeScreenSize
                  ? 50.0
                  : width >= smallScreenSize && width < mediumScreenSize
                      ? 40.0
                      : 30.0,
              width: width >= mediumScreenSize && width < largeScreenSize
                  ? 100.0
                  : width >= smallScreenSize && width < mediumScreenSize
                      ? 90.0
                      : 80.0,
              child: Center(
                child: ElevatedButton(
                  onHover: (value) {},
                  onPressed: () {},
                  child: Text(
                    'Donate',
                    style: TextStyle(
                        fontSize:
                            width >= mediumScreenSize && width < largeScreenSize
                                ? 15.0
                                : width >= smallScreenSize &&
                                        width < mediumScreenSize
                                    ? 15.0
                                    : 12.0,
                        fontWeight: FontWeight.bold),
                  ),
                )
                    .animate()
                    .fade(
                        duration: 1000.ms, delay: 500.ms, curve: Curves.easeOut)
                    .slide()
                    .shake(hz: 3)
                    .shimmer(
                        delay: const Duration(
                          seconds: 2,
                        ),
                        duration: const Duration(seconds: 5),
                        curve: Curves.easeOut),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: InkWell(
                onTap: () {
                  key1.currentState!.openEndDrawer();
                },
                child: const Icon(
                  Icons.menu_sharp,
                  color: Colors.black,
                ),
              ),
            ),
          ],
          backgroundColor: Colors.white,
        );
      }
    });
  }
}
