import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NN extends StatefulWidget {
  const NN({Key? key}) : super(key: key);

  @override
  State<NN> createState() => _NNState();
}

class _NNState extends State<NN> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            constraints: BoxConstraints.expand(
              height: Theme.of(context).textTheme.headline4!.fontSize! * 1.1 +
                  180.0,
            ),
            padding: const EdgeInsets.all(8.0),
            color: Colors.blue[400],
            alignment: Alignment.center,
            transform: Matrix4.rotationZ(0.2),
            child: Text(
              'Hello World',
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
