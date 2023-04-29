import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:termproject/app/getx/simple/simple_count_controller.dart';

class SimpleCountPage extends StatelessWidget {
  const SimpleCountPage({super.key});

  @override
  Widget build(context) {
    return GetBuilder<SimpleCountController>(
        init: SimpleCountController(), // INIT IT ONLY THE FIRST TIME
        builder: (_) => Scaffold(
            appBar: AppBar(
              title: Text(
                '${_.counter}',
              ),
            ),
            body: Center(
                child: ElevatedButton(
                    child: Text("Go to Other"), onPressed: () => Get.to(Other(), transition: Transition.zoom))),
            floatingActionButton: FloatingActionButton(child: Icon(Icons.add), onPressed: _.increment)));
  }
}

class Other extends StatelessWidget {
  Other({super.key});
  final SimpleCountController c = Get.find();

  @override
  Widget build(context) {
    return Scaffold(body: Center(child: Text("${c.counter}")));
  }
}
