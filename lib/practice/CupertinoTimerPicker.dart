import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoTimerPickerSample extends StatefulWidget {
  const CupertinoTimerPickerSample({Key? key}) : super(key: key);

  @override
  State<CupertinoTimerPickerSample> createState() =>
      _CupertinoTimerPickerSampleState();
}

class _CupertinoTimerPickerSampleState
    extends State<CupertinoTimerPickerSample> {
  Duration duration = const Duration(hours: 1, minutes: 23);

  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6.0),
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        color: CupertinoColors.systemBackground.resolveFrom(context),
        child: SafeArea(
          top: false,
          child: child,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CupertinoPageScaffold(
          child: DefaultTextStyle(
            style: TextStyle(
              color: CupertinoColors.label.resolveFrom(context),
              fontSize: 22.0,
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _TimerPickerItem(
                    children: <Widget>[
                      const Text(
                        'Timer',
                        style: TextStyle(fontSize: 20),
                      ),
                      CupertinoButton(
                        onPressed: () => _showDialog(
                          CupertinoTimerPicker(
                            mode: CupertinoTimerPickerMode.hm,
                            initialTimerDuration: duration,
                            onTimerDurationChanged: (Duration newDuration) {
                              setState(() => duration = newDuration);
                            },
                          ),
                        ),
                        child: Text(
                          '$duration',
                          style: const TextStyle(
                            fontSize: 22.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// This class simply decorates a row of widgets.
class _TimerPickerItem extends StatelessWidget {
  const _TimerPickerItem({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: CupertinoColors.inactiveGray,
            width: 0.0,
          ),
          bottom: BorderSide(
            color: CupertinoColors.inactiveGray,
            width: 0.0,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: children,
        ),
      ),
    );
  }
}
