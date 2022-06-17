import 'dart:ui';

import 'package:flutter/material.dart';

class KKK extends StatelessWidget {
  const KKK({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 20.0,
            ),
            ListTile(
              leading: Hero(
                tag: 'hero-rectangle',
                child: _blueRectangle(const Size(50, 50)),
              ),
              onTap: () => _gotoDetailsPage(context),
              title: const Text(
                'Tap on the icon to view hero animation transition.',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _blueRectangle(Size size) {
    return Container(
      width: size.width,
      height: size.height,
      color: Colors.blue,
    );
  }

  void _gotoDetailsPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute<void>(
      builder: (BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text(
            'second Page',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: 'hero-rectangle',
                child: _blueRectangle(const Size(200, 200)),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
