import 'package:flutter/material.dart';

class RRRR extends StatefulWidget {
  const RRRR({Key? key}) : super(key: key);

  @override
  State<RRRR> createState() => _RRRRState();
}

class _RRRRState extends State<RRRR> {
  final List<int> _items = List<int>.generate(25, (int index) => index);

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.15);

    return SafeArea(
      child: Scaffold(
        body: ReorderableListView(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          children: <Widget>[
            for (int index = 0; index < _items.length; index += 1)
              ListTile(
                key: Key('$index'),
                tileColor: _items[index].isOdd ? oddItemColor : evenItemColor,
                title: Text('Item ${_items[index]}'),
              ),
          ],
          onReorder: (int oldIndex, int newIndex) {
            setState(() {
              if (oldIndex < newIndex) {
                newIndex -= 1;
              }
              final int item = _items.removeAt(oldIndex);
              _items.insert(newIndex, item);
            });
          },
        ),
      ),
    );
  }
}
