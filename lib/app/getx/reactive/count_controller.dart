import 'package:get/get.dart';

class CountController extends GetxController {
  RxInt _count = 0.obs;
  int get count => _count.value;
  void increment() => _count++;
/*  @override
  void onInit() {
    super.onInit();
    debounce(_count, (callback) {});
    once(_count, (callback) {});
  }*/
}
