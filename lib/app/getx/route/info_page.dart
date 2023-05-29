import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:termproject/app/getx/route/info_next_page.dart';

class InfoPage extends StatefulWidget {
  InfoPage({Key? key}) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  final TextEditingController textEditingController = TextEditingController();
  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller: textEditingController,
          decoration: InputDecoration(hintText: '작성해주세요~'),
        ),
        TextButton(
          child: Text('이동1'),
          onPressed: () {
            Get.to(() => InfoNextPage(), arguments: textEditingController.text, transition: Transition.size);
          },
        ),
        TextButton(
          child: Text('이동2'),
          onPressed: () {
            Get.toNamed(
              '/infonext/abcde?uid=abc12345&nickname=songsong',
              arguments: textEditingController.text,
            );
          },
        ),
        TextButton(
          child: Text('다이얼로그'),
          onPressed: () {
            Get.dialog(AlertDialog(
              title: Text('제목'),
              content: Text('내용'),
            ));
          },
        ),
        TextButton(
          child: Text('다이얼로그2'),
          onPressed: () {
            Get.dialog(Dialog(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('123'),
                  Text('123'),
                  Text('123'),
                  Text('123'),
                ],
              ),
            ));
          },
        ),
        TextButton(
          child: Text('bottomsheet'),
          onPressed: () {
            Get.bottomSheet(
              Column(children: [Text('123123'), Text('123123')]),
              backgroundColor: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            );
          },
        ),
      ],
    );
  }
}
