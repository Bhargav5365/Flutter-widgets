import 'package:flutter/material.dart';

class CCCC extends StatelessWidget {
  const CCCC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: OutlinedButton(
            onPressed: () {
              debugPrint('Received click');
            },
            child: const Text('Click Me'),
          ),
        ),
      ),
    );
  }
}
