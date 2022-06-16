import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CCC extends StatefulWidget {
  const CCC({Key? key}) : super(key: key);

  @override
  State<CCC> createState() => _CCCState();
}

class _CCCState extends State<CCC> {
  late TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(text: 'initial text, Hello.!!');
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CupertinoPageScaffold(
          child: Center(
            child: CupertinoTextField(
              controller: _textController,
            ),
          ),
        ),
      ),
    );
  }
}
