import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:termproject/app/getx/simple/simple_count_controller.dart';

class SimpleCountPage extends StatelessWidget {
  @override
  Widget build(context) {
    // Instantiate your class using Get.put() to make it available for all "child" routes there.
    return GetBuilder<SimpleCountController>(
        init: SimpleCountController(), // INIT IT ONLY THE FIRST TIME
        builder: (_) => Scaffold(
            // Use Obx(()=> to update Text() whenever count is changed.
            appBar: AppBar(
              title: Text(
                '${_.counter}',
              ),
            ),

            // Replace the 8 lines Navigator.push by a simple Get.to(). You don't need context
            body: Center(child: ElevatedButton(child: Text("Go to Other"), onPressed: () => Get.to(Other()))),
            floatingActionButton: FloatingActionButton(child: Icon(Icons.add), onPressed: _.increment)));
  }
}

class Other extends StatelessWidget {
  // You can ask Get to find a Controller that is being used by another page and redirect you to it.
  final SimpleCountController c = Get.find();

  @override
  Widget build(context) {
    // Access the updated count variable
    return Scaffold(body: Center(child: Text("${c.counter}")));
  }
}
