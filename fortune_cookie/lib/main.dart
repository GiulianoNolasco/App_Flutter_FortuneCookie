import 'dart:math';
import 'package:flutter/material.dart';
import 'package:fortune_cookie/constants/image_path.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fortune Cookie',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: const MyHomePage(title: 'Fortune Cookie'));
  }
}
