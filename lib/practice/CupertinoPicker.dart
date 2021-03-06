import 'dart:ui';

import 'package:flutter/cupertino.dart';

const double _kItemExtent = 32.0;
const List<String> _fruitNames = <String>[
  'Orange',
  'Strawberry',
  'Pineapple',
  'Apple',
  'Banana',
  'Mango',
];

class CupertinoPickerSample extends StatefulWidget {
  const CupertinoPickerSample({Key? key}) : super(key: key);

  @override
  State<CupertinoPickerSample> createState() => _CupertinoPickerSampleState();
}

class _CupertinoPickerSampleState extends State<CupertinoPickerSample> {
  int _selectedFruit = 0;

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
    return CupertinoPageScaffold(
      child: DefaultTextStyle(
        style: TextStyle(
          color: CupertinoColors.label.resolveFrom(context),
          fontSize: 22.0,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Selected fruit: '),
              CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: () => _showDialog(
                  CupertinoPicker(
                    magnification: 1.22,
                    squeeze: 1.2,
                    useMagnifier: true,
                    itemExtent: _kItemExtent,
                    onSelectedItemChanged: (int selectedItem) {
                      setState(
                        () {
                          _selectedFruit = selectedItem;
                        },
                      );
                    },
                    children:
                        List<Widget>.generate(_fruitNames.length, (int index) {
                      return Center(
                        child: Text(
                          _fruitNames[index],
                        ),
                      );
                    }),
                  ),
                ),
                child: Text(
                  _fruitNames[_selectedFruit],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
