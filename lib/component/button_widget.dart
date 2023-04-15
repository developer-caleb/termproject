import 'package:flutter/material.dart';

TextButton myTextButton1(String text, VoidCallback callback) => TextButton(
      onPressed: callback,
      child: Text(text),
      style: TextButton.styleFrom(
          foregroundColor: Colors.green, backgroundColor: Colors.orange),
    );

ButtonStyle textButtonStyle1 = TextButton.styleFrom();
