import 'package:get/get.dart';

class CountController extends GetxController {
  RxInt _count = 0.obs;
  int get count => _count.value;
  void increment() => _count++;
  @override
  void onInit() {
    super.onInit();
    debounce(_count, (callback) {}, time: Duration(milliseconds: 3000));
    interval(_count, (callback) {}, time: Duration(milliseconds: 3000));
  }
}
