import 'package:flutter/material.dart';

class OOO extends StatelessWidget {
  const OOO({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox.expand(
          child: FractionallySizedBox(
            widthFactor: 0.5,
            heightFactor: 0.5,
            alignment: FractionalOffset.center,
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 4,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
