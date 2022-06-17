// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TooltipSample extends StatelessWidget {
  const TooltipSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Tooltip(
            richMessage: TextSpan(
              text: 'I am a rich tooltip. ',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              children: <InlineSpan>[
                TextSpan(
                  text: 'I am another span of this rich tooltip',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            child: Text(
              'Tap this text and hold down to show a tooltip.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
