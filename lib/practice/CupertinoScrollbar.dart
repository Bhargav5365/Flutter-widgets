import 'package:flutter/material.dart';

class YY extends StatefulWidget {
  const YY({Key? key}) : super(key: key);

  @override
  State<YY> createState() => _YYState();
}

class _YYState extends State<YY> {
  final ScrollController _firstController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Row(
              children: <Widget>[
                SizedBox(
                  width: constraints.maxWidth / 2,
                  child: Scrollbar(
                    trackVisibility: true,
                    child: ListView.builder(
                      itemCount: 30,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 50,
                          color: index.isEven
                              ? Colors.lightGreen
                              : Colors.greenAccent,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Scrollable 1 : Index $index'),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  width: constraints.maxWidth / 2,
                  child: Scrollbar(
                    trackVisibility: true,
                    controller: _firstController,
                    child: ListView.builder(
                      controller: _firstController,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Scrollable 2 : Index $index'),
                        );
                      },
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
