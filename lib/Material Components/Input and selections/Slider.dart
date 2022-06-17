import 'package:flutter/material.dart';

class HHHH extends StatefulWidget {
  const HHHH({Key? key}) : super(key: key);

  @override
  State<HHHH> createState() => _HHHHState();
}

class _HHHHState extends State<HHHH> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Slider(
          value: _currentSliderValue,
          max: 100,
          divisions: 20,
          label: _currentSliderValue.round().toString(),
          onChanged: (double value) {
            setState(() {
              _currentSliderValue = value;
            });
          },
        ),
      ),
    );
  }
}
