import 'package:flutter/material.dart';

class XYZ extends StatefulWidget {
  const XYZ({Key? key}) : super(key: key);

  @override
  State<XYZ> createState() => _XYZState();
}

class _XYZState extends State<XYZ> {
  double _size = 50.0;
  bool _large = false;

  void _updateSize() {
    setState(() {
      _size = _large ? 250.0 : 100.0;
      _large = !_large;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: () => _updateSize(),
            child: Container(
              color: Colors.amberAccent,
              child: AnimatedSize(
                curve: Curves.easeIn,
                duration: const Duration(seconds: 1),
                child: FlutterLogo(size: _size),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
