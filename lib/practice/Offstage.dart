import 'package:flutter/material.dart';

class PPP extends StatefulWidget {
  const PPP({Key? key}) : super(key: key);

  @override
  State<PPP> createState() => _PPPState();
}

class _PPPState extends State<PPP> {
  final GlobalKey _key = GlobalKey();
  bool _offstage = true;

  Size _getFlutterLogoSize() {
    final RenderBox renderLogo =
        _key.currentContext!.findRenderObject()! as RenderBox;
    return renderLogo.size;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Offstage(
                offstage: _offstage,
                child: FlutterLogo(
                  key: _key,
                  size: 150.0,
                ),
              ),
              Text('Flutter logo is offstage: $_offstage'),
              ElevatedButton(
                child: const Text('Toggle Offstage Value'),
                onPressed: () {
                  setState(() {
                    _offstage = !_offstage;
                  });
                },
              ),
              if (_offstage)
                ElevatedButton(
                    child: const Text('Get Flutter Logo size'),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                              'Flutter Logo size is ${_getFlutterLogoSize()}'),
                        ),
                      );
                    }),
            ],
          ),
        ),
      ),
    );
  }
}
