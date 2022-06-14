import 'package:flutter/material.dart';

class CC extends StatefulWidget {
  const CC({Key? key}) : super(key: key);

  @override
  State<CC> createState() => _CCState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _CCState extends State<CC> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: FadeTransition(
        opacity: _animation,
        child: const Padding(padding: EdgeInsets.all(8), child: FlutterLogo()),
      ),
    );
  }
}
