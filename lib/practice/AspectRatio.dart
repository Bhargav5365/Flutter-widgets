import 'package:flutter/material.dart';

class LLL extends StatelessWidget {
  const LLL({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            color: Colors.blue,
            alignment: Alignment.center,
            width: double.infinity,
            height: 100.0,
            child: AspectRatio(
              aspectRatio: 16 / 8,
              child: Container(
                color: Colors.green,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
