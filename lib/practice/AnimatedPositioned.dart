import 'package:flutter/material.dart';

class Animatedpositioned extends StatefulWidget {
  const Animatedpositioned({Key? key}) : super(key: key);

  @override
  State<Animatedpositioned> createState() => _AnimatedpositionedState();
}

class _AnimatedpositionedState extends State<Animatedpositioned> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SizedBox(
            width: 200,
            height: 350,
            child: Stack(
              children: <Widget>[
                AnimatedPositioned(
                  width: selected ? 100.0 : 80.0,
                  height: selected ? 80.0 : 100.0,
                  top: selected ? 80.0 : 150.0,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInToLinear,
                  child: GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          selected = !selected;
                        },
                      );
                    },
                    child: Container(
                      color: Colors.grey[500],
                      child: const Center(
                        child: Text('Click here'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
