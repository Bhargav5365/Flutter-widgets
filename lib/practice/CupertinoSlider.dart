import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSliderSample extends StatefulWidget {
  const CupertinoSliderSample({Key? key}) : super(key: key);

  @override
  State<CupertinoSliderSample> createState() => _CupertinoSliderSampleState();
}

class _CupertinoSliderSampleState extends State<CupertinoSliderSample> {
  double _currentSliderValue = 0.0;
  String? _sliderStatus;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CupertinoPageScaffold(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  '$_currentSliderValue',
                  style: TextStyle(fontSize: 20),
                ),
                CupertinoSlider(
                  key: const Key('slider'),
                  value: _currentSliderValue,
                  divisions: 5,
                  max: 100,
                  activeColor: CupertinoColors.systemPurple,
                  thumbColor: CupertinoColors.systemPurple,
                  onChangeStart: (double value) {
                    setState(() {
                      _sliderStatus = 'Sliding';
                    });
                  },
                  onChangeEnd: (double value) {
                    setState(() {
                      _sliderStatus = 'Finished sliding';
                    });
                  },
                  onChanged: (double value) {
                    setState(() {
                      _currentSliderValue = value;
                    });
                  },
                ),
                Text(
                  _sliderStatus ?? '',
                  style:
                      CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                            fontSize: 12,
                          ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
