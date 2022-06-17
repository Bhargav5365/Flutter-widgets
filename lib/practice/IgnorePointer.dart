import 'package:flutter/material.dart';

class III extends StatefulWidget {
  const III({Key? key}) : super(key: key);

  @override
  State<III> createState() => _IIIState();
}

class _IIIState extends State<III> {
  bool ignoring = false;
  void setIgnoring(bool newValue) {
    setState(() {
      ignoring = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: ElevatedButton(
          onPressed: () {
            setIgnoring(!ignoring);
          },
          child: Text(
            ignoring ? 'Set ignoring to false' : 'Set ignoring to true',
          ),
        ),
      ),
      body: Center(
        child: IgnorePointer(
          ignoring: ignoring,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('Ignoring: $ignoring'),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Click me!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
