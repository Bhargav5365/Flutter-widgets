import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum Sky { midnight, viridian, cerulean }

Map<Sky, Color> skyColors = <Sky, Color>{
  Sky.midnight: const Color(0xff5353be),
  Sky.viridian: const Color(0xff40826d),
  Sky.cerulean: const Color(0xff007ba7),
};

class SegmentedControlSample extends StatefulWidget {
  const SegmentedControlSample({Key? key}) : super(key: key);

  @override
  State<SegmentedControlSample> createState() => _SegmentedControlSampleState();
}

class _SegmentedControlSampleState extends State<SegmentedControlSample> {
  Sky _selectedSegment = Sky.midnight;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CupertinoPageScaffold(
          backgroundColor: skyColors[_selectedSegment],
          navigationBar: CupertinoNavigationBar(
            middle: CupertinoSegmentedControl<Sky>(
              selectedColor: skyColors[_selectedSegment],
              padding: const EdgeInsets.symmetric(horizontal: 12),
              groupValue: _selectedSegment,
              onValueChanged: (Sky value) {
                setState(() {
                  _selectedSegment = value;
                });
              },
              children: const <Sky, Widget>{
                Sky.midnight: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Midnight',
                    style:
                        TextStyle(color: CupertinoColors.white, fontSize: 15),
                  ),
                ),
                Sky.viridian: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Viridian',
                    style:
                        TextStyle(color: CupertinoColors.white, fontSize: 15),
                  ),
                ),
                Sky.cerulean: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Cerulean',
                    style:
                        TextStyle(color: CupertinoColors.white, fontSize: 15),
                  ),
                ),
              },
            ),
          ),
          child: Center(
            child: Text(
              'Selected Segment: ${_selectedSegment.name}',
              style: const TextStyle(color: CupertinoColors.white),
            ),
          ),
        ),
      ),
    );
  }
}
