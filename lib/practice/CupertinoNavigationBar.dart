import 'package:flutter/cupertino.dart';

class WW extends StatefulWidget {
  const WW({Key? key}) : super(key: key);

  @override
  State<WW> createState() => _WWState();
}

class _WWState extends State<WW> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey.withOpacity(0.5),
        middle: const Text('Sample Code'),
      ),
      child: Column(
        children: <Widget>[
          Container(height: 50, color: CupertinoColors.systemRed),
          Container(height: 50, color: CupertinoColors.systemGreen),
          Container(height: 50, color: CupertinoColors.systemBlue),
          Container(height: 50, color: CupertinoColors.systemYellow),
        ],
      ),
    );
  }
}
