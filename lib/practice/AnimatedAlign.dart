import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: Container(
          width: 250.0,
          height: 250.0,
          color: Colors.grey[300],
          child: AnimatedAlign(
            alignment: selected ? Alignment.topLeft : Alignment.bottomRight,
            duration: const Duration(seconds: 1),
            curve: Curves.bounceIn,
            child: const FlutterLogo(size: 50.0),
          ),
        ),
      ),
    );
  }
}
