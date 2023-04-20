import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      body: Text(
        '홈페이지',
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
