import 'package:flutter/material.dart';

class EE extends StatefulWidget {
  const EE({Key? key}) : super(key: key);

  @override
  State<EE> createState() => _EEState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _EEState extends State<EE> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticOut,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RotationTransition(
          turns: _animation,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: FlutterLogo(size: 150.0),
          ),
        ),
      ),
    );
  }
}
