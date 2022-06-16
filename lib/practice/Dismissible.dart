import 'package:flutter/material.dart';

class FFF extends StatefulWidget {
  const FFF({Key? key}) : super(key: key);

  @override
  State<FFF> createState() => _FFFState();
}

class _FFFState extends State<FFF> {
  List<int> items = List<int>.generate(50, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          itemCount: items.length,
          padding: const EdgeInsets.symmetric(vertical: 16),
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
              background: Container(
                color: Colors.green,
              ),
              key: ValueKey<int>(items[index]),
              onDismissed: (DismissDirection direction) {
                setState(() {
                  items.removeAt(index);
                });
              },
              child: ListTile(
                title: Text(
                  'Item ${items[index]}',
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
