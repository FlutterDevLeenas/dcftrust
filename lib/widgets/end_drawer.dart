import 'package:dcftrust/constants/header.dart';
import 'package:dcftrust/constants/responsive.dart';
import 'package:dcftrust/controllers/headercontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EndDrawer extends StatefulWidget {
  const EndDrawer({
    super.key,
    required this.headerController,
  });

  final HeaderController headerController;

  @override
  State<EndDrawer> createState() => _EndDrawerState();
}

class _EndDrawerState extends State<EndDrawer> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return largeScreenSize > width
        ? Drawer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(() {
                  return Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      InkWell(
                        onTap: () {
                          Get.rootDelegate.toNamed('/');
                        },
                        hoverColor: Colors.transparent,
                        onHover: (value) {
                          widget.headerController.changeHoverHome(value);
                        },
                        child: headerItemDrawer(
                            "Home",
                            widget.headerController.onHoverhome.value,
                            widget.headerController.home),
                      ),
                      InkWell(
                          hoverColor: Colors.transparent,
                          onTap: () {
                            Get.rootDelegate.toNamed('/about');
                          },
                          onHover: (value) {
                            widget.headerController.changeHoverAbout(value);
                          },
                          child: headerItemDrawer(
                              "About Us",
                              widget.headerController.onHoverabout.value,
                              widget.headerController.about)),
                      InkWell(
                          hoverColor: Colors.transparent,
                          onTap: () {
                            Get.rootDelegate.toNamed('/cause');
                          },
                          onHover: (value) {
                            widget.headerController.changeHoverCause(value);
                          },
                          child: headerItemDrawer(
                              "Cause",
                              widget.headerController.onHovercause.value,
                              widget.headerController.cause)),
                      InkWell(
                        hoverColor: Colors.transparent,
                        onTap: () {
                          Get.rootDelegate.toNamed('/projects');
                        },
                        onHover: (value) {
                          widget.headerController.changeHoverProject(value);
                        },
                        child: headerItemDrawer(
                            "Projects",
                            widget.headerController.onHoverprojects.value,
                            widget.headerController.project),
                      ),
                      InkWell(
                          hoverColor: Colors.transparent,
                          onTap: () {
                            Get.rootDelegate.toNamed('/blog');
                          },
                          onHover: (value) {
                            widget.headerController.changeHoverBlog(value);
                          },
                          child: headerItemDrawer(
                              "Blog",
                              widget.headerController.onHoverblog.value,
                              widget.headerController.blog)),
                      InkWell(
                        hoverColor: Colors.transparent,
                        onTap: () {
                          Get.rootDelegate.toNamed('/contact');
                        },
                        onHover: (value) {
                          widget.headerController.changeHoverContact(value);
                        },
                        child: headerItemDrawer(
                            "Contact Us",
                            widget.headerController.onHovercontact.value,
                            widget.headerController.contact),
                      ),
                    ],
                  );
                })
              ],
            ),
          )
        : Container();
  }
}
