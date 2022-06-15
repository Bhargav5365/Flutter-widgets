// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RR extends StatefulWidget {
  const RR({Key? key}) : super(key: key);

  @override
  State<RR> createState() => _RRState();
}

class _RRState extends State<RR> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: const Text.rich(
            TextSpan(
              text: 'Hello', // default text style
              children: <TextSpan>[
                TextSpan(
                    text: ' beautiful ',
                    style: TextStyle(fontStyle: FontStyle.italic)),
                TextSpan(
                    text: 'world',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
