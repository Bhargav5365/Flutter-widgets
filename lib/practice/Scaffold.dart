import 'dart:ui';

import 'package:flutter/material.dart';

class QQ extends StatefulWidget {
  const QQ({Key? key}) : super(key: key);

  @override
  State<QQ> createState() => _QQState();
}

class _QQState extends State<QQ> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Code'),
      ),
      body: Center(
        child: Text(
          'You have pressed the button $_count times.',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _count++;
        }),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
