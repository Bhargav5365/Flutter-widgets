// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: MergeSemantics(
            child: Row(
              children: <Widget>[
                Checkbox(
                  value: true,
                  onChanged: (bool? value) {},
                ),
                const Text('Settings'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
