import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:termproject/model/random_user.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () async {
            final dio = Dio();
            final response = await dio.get('https://randomuser.me/api/');
            print(response.data);
            RandomUser user = RandomUser.fromJson(response.data['results'][0]);
            print('user :$user');
            print('user :${user.toJson()}');
          },
          child: Text(
            '홈페이지',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ],
    );
  }
}
