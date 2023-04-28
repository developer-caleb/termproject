import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SimpleCountController extends GetxController {
  int counter = 0;
  void increment() {
    counter++;
    update(); // use update() to update counter variable on UI when increment be called
  }
}
