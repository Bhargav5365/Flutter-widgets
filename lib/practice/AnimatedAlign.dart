import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ABC extends StatefulWidget {
  const ABC({Key? key}) : super(key: key);

  @override
  State<ABC> createState() => _ABCState();
}

class _ABCState extends State<ABC> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
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
        ),
      ),
    );
  }
}
