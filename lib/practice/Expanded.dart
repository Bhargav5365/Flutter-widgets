// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MMM extends StatelessWidget {
  const MMM({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Expanded Column Sample',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          ),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
              Expanded(
                child: Container(
                  color: Colors.amber,
                  width: 100,
                  child: Center(
                    child: Text(
                      'Hello',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
