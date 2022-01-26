import 'package:flutter/material.dart';
import 'package:movieku/home_movie.dart';

import 'detail_movie.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: HomeMovie(),
    );
  }
}