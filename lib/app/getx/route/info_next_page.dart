import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InfoNextPage extends StatefulWidget {
  const InfoNextPage({Key? key}) : super(key: key);

  @override
  State<InfoNextPage> createState() => _InfoNextPageState();
}

class _InfoNextPageState extends State<InfoNextPage> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: textEditingController,
              decoration: InputDecoration(hintText: '결과 작성~'),
            ),
            Text('argument : ${Get.arguments}'),
            Text('parameter[info] : ${Get.parameters['info']}'),
            Text('parameter[uid] : ${Get.parameters['uid']}'),
            Text('parameter[nickname] : ${Get.parameters['nickname']}'),
          ],
        ));
  }
}
