import 'package:flutter/material.dart';

class ZZZ extends StatefulWidget {
  const ZZZ({Key? key}) : super(key: key);

  @override
  State<ZZZ> createState() => _ZZZState();
}

class _ZZZState extends State<ZZZ> {
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
                onPressed: null,
                child: const Text('Disabled'),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: style,
                onPressed: () {},
                child: const Text('Enabled'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
