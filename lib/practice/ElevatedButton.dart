import 'package:flutter/material.dart';

class OO extends StatefulWidget {
  const OO({Key? key}) : super(key: key);

  @override
  State<OO> createState() => _OOState();
}

class _OOState extends State<OO> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ElevatedButton(
                style: style,
                onPressed: () {},
                child: const Text('Enabled'),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: style,
                onPressed: null,
                child: const Text('Disabled'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
