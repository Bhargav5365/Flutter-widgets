import 'dart:math' as math;

import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _controller,
        child: Container(
          width: 150.0,
          height: 150.0,
          color: Colors.green,
          child: Center(
            child: Text('Hello.!!'),
          ),
        ),
        builder: (BuildContext context, Widget? child) {
          return Transform.rotate(
            angle: _controller.value * 10.0 * math.pi,
            child: child,
          );
        },
      ),
    );
  }
}
