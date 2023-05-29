import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:termproject/app/getx/route/info_next_page.dart';
import 'package:termproject/app/getx/route/info_page.dart';
import 'package:termproject/home_screen.dart';

import 'config/app_theme.dart';

void main() {
  runApp(GetMaterialApp(
      theme: AppTheme.light,
      //darkTheme: AppTheme.dark,
      home: HomeScreen(),
      getPages: [
        GetPage(
          name: '/info',
          page: () => InfoPage(),
        ),
        GetPage(name: '/infonext/:info', page: () => InfoNextPage(), transition: Transition.zoom),
      ]));
}
