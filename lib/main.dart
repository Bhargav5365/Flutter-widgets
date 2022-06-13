import 'package:flutter/material.dart';
import 'package:flutter_widgets/practice/MergeSemantics.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Review Admin',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
