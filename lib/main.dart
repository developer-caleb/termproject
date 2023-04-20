import 'package:flutter/material.dart';
import 'package:termproject/home_screen.dart';

import 'config/app_theme.dart';

void main() {
  runApp(MaterialApp(
    theme: AppTheme.light,
    //darkTheme: AppTheme.dark,
    home: HomeScreen(),
  ));
}
