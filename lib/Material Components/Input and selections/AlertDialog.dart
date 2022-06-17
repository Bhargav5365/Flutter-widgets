// ignore_for_file: file_names

import 'package:flutter/material.dart';

class JJJJ extends StatelessWidget {
  const JJJJ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: TextButton(
            onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('Alert'),
                content: const Text('Are You Sure..!'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child: const Text('No'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('Yes'),
                  ),
                ],
              ),
            ),
            child: const Text('Submit'),
          ),
        ),
      ),
    );
  }
}
