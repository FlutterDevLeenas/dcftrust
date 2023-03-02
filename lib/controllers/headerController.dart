import 'package:get/get.dart';

class HeaderController extends GetxController {
  RxBool onHover = false.obs;
  RxBool onHoverhome = false.obs;
  RxBool onHoverabout = false.obs;
  RxBool onHovercause = false.obs;
  RxBool onHoverprojects = false.obs;
  RxBool onHoverblog = false.obs;
  RxBool onHovercontact = false.obs;
  bool home = true;
  bool about = false;
  bool cause = false;
  bool project = false;
  bool blog = false;
  bool contact = false;

  changeHover(bool value) {
    onHover.value = value;
  }

  changeHoverHome(bool value) {
    onHoverhome.value = value;
  }

  changeHoverAbout(bool value) {
    onHoverabout.value = value;
  }

  changeHoverCause(bool value) {
    onHovercause.value = value;
  }

  changeHoverProject(bool value) {
    onHoverprojects.value = value;
  }

  changeHoverBlog(bool value) {
    onHoverblog.value = value;
  }

  changeHoverContact(bool value) {
    onHovercontact.value = value;
  }

  changeActiveHome() {
    home = true;
    about = false;
    cause = false;
    project = false;
    blog = false;
    contact = false;
    update();
  }

  changeActiveAbout() {
    home = false;
    about = true;
    cause = false;
    project = false;
    blog = false;
    contact = false;
    update();
  }

  changeActiveCause() {
    home = false;
    about = false;
    cause = true;
    project = false;
    blog = false;
    contact = false;
    update();
  }

  changeActiveProjects() {
    home = false;
    about = false;
    cause = false;
    project = true;
    blog = false;
    contact = false;
    update();
  }

  changeActiveBlog() {
    home = false;
    about = false;
    cause = false;
    project = false;
    blog = true;
    contact = false;
    update();
  }

  changeActiveContact() {
    home = false;
    about = false;
    cause = false;
    project = false;
    blog = false;
    contact = true;
    update();
  }
}
