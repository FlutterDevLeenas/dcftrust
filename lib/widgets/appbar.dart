import 'package:dcftrust/constants/header.dart';
import 'package:dcftrust/controllers/headerController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.headerController,
    required this.cont,
  });

  final HeaderController headerController;
  final BuildContext cont;

  @override
  Widget build(BuildContext context) {
    var route = ModalRoute.of(cont);
    return AppBar(
      elevation: 0.0,
      toolbarHeight: 100.0,
      flexibleSpace: const Opacity(
        opacity: 0.5,
        child: Image(
          image: AssetImage('assets/header-bg.jpg'),
          fit: BoxFit.cover,
        ),
      ),
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
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
            ],
          ),
          Obx(() {
            return Row(
              children: [
                InkWell(
                  onTap: () {
                    var prit = route!.settings.name;
                    print(prit);
                    Get.rootDelegate.toNamed('/');
                    // headerController.changeActiveHome();
                  },
                  onHover: (value) {
                    headerController.changeHoverHome(value);
                  },
                  child: headerItem("Home", headerController.onHoverhome.value,
                      headerController.home),
                ),
                InkWell(
                    onTap: () {
                      var prit = route!.settings.name;
                      print(prit);
                      Get.rootDelegate.toNamed('/about');
                      // headerController.changeActiveAbout();
                    },
                    onHover: (value) {
                      headerController.changeHoverAbout(value);
                    },
                    child: headerItem(
                        "About Us",
                        headerController.onHoverabout.value,
                        headerController.about)),
                InkWell(
                    onTap: () {
                      var prit = route!.settings.name;
                      print(prit);
                      Get.rootDelegate.toNamed('/cause');
                      // headerController.changeActiveCause();
                    },
                    onHover: (value) {
                      headerController.changeHoverCause(value);
                    },
                    child: headerItem(
                        "Cause",
                        headerController.onHovercause.value,
                        headerController.cause)),
                InkWell(
                  onTap: () {
                    var prit = route!.settings.name;
                    print(prit);
                    Get.rootDelegate.toNamed('/projects');
                    // headerController.changeActiveProjects();
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
                    onTap: () {
                      var prit = route!.settings.name;
                      print(prit);
                      Get.rootDelegate.toNamed('/blog');
                      // headerController.changeActiveBlog();
                    },
                    onHover: (value) {
                      headerController.changeHoverBlog(value);
                    },
                    child: headerItem(
                        "Blog",
                        headerController.onHoverblog.value,
                        headerController.blog)),
                InkWell(
                  onTap: () {
                    var prit = route!.settings.name;
                    print(prit);
                    Get.rootDelegate.toNamed('/contact');
                    // headerController.changeActiveContact();
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
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
              ],
            );
          })
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
