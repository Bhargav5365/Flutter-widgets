import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoNavBarSample extends StatelessWidget {
  const CupertinoNavBarSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CupertinoPageScaffold(
          child: CustomScrollView(
            slivers: <Widget>[
              const CupertinoSliverNavigationBar(
                leading: Icon(CupertinoIcons.person_2),
                largeTitle: Text('Contacts'),
                trailing: Icon(CupertinoIcons.add_circled),
              ),
              SliverFillRemaining(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const Text('Drag me up',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center),
                    CupertinoButton.filled(
                      onPressed: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute<Widget>(
                            builder: (BuildContext context) {
                              return const NextPage();
                            },
                          ),
                        );
                      },
                      child: const Text('Go to Next Page'),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Brightness brightness = CupertinoTheme.brightnessOf(context);
    return SafeArea(
      child: Scaffold(
        body: CupertinoPageScaffold(
          child: CustomScrollView(
            slivers: <Widget>[
              CupertinoSliverNavigationBar(
                backgroundColor: CupertinoColors.systemYellow,
                border: Border(
                  bottom: BorderSide(
                    color: brightness == Brightness.light
                        ? CupertinoColors.black
                        : CupertinoColors.white,
                  ),
                ),
                middle: const Text('Contacts Group'),
                largeTitle: const Text('Family'),
              ),
              SliverFillRemaining(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const <Widget>[
                    Text('Drag me up', textAlign: TextAlign.center),
                    Text('Tap on the leading button to navigate back',
                        textAlign: TextAlign.center),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
