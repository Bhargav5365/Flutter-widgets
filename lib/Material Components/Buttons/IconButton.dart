import 'package:flutter/material.dart';

double _volume = 0.0;

class BBBB extends StatefulWidget {
  const BBBB({Key? key}) : super(key: key);

  @override
  State<BBBB> createState() => _BBBBState();
}

class _BBBBState extends State<BBBB> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.volume_up),
                tooltip: 'Increase volume by 10',
                onPressed: () {
                  setState(() {
                    _volume += 10;
                  });
                },
              ),
              Text('Volume : $_volume')
            ],
          ),
        ),
      ),
    );
  }
}
