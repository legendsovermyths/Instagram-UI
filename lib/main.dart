import 'package:flutter/material.dart';
import 'package:instagram/FeedScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      home: FeedScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
