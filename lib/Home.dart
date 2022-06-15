// ignore_for_file: prefer_const_constructors, avoid_print, unnecessary_import

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/practice/AnimatedAlign.dart';
import 'package:flutter_widgets/practice/AnimatedBuilder.dart';
import 'package:flutter_widgets/practice/AnimatedContainer.dart';
import 'package:flutter_widgets/practice/AnimatedPositioned.dart';
import 'package:flutter_widgets/practice/AnimatedSize.dart';
import 'package:flutter_widgets/practice/AnimatedWidget.dart';
import 'package:flutter_widgets/practice/AppBar.dart';
import 'package:flutter_widgets/practice/Column.dart';
import 'package:flutter_widgets/practice/Container.dart';
import 'package:flutter_widgets/practice/DecoratedBoxTransition.dart';
import 'package:flutter_widgets/practice/ElevatedButton.dart';
import 'package:flutter_widgets/practice/FutureBuilder.dart';
import 'package:flutter_widgets/practice/Image%20Icon.dart';
import 'package:flutter_widgets/practice/MergeSemantics.dart';
import 'package:flutter_widgets/practice/PositionedTransition.dart';
import 'package:flutter_widgets/practice/RotationTransition.dart';
import 'package:flutter_widgets/practice/Row.dart';
import 'package:flutter_widgets/practice/Scaffold.dart';
import 'package:flutter_widgets/practice/SizeTransition.dart';
import 'package:flutter_widgets/practice/SlideTransition.dart';
import 'package:flutter_widgets/practice/StreamBuilder.dart';
import 'package:flutter_widgets/practice/Text.dart';

import 'practice/FadeTransition.dart';
import 'practice/ScaleTransition.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SplashScreen(),
                          ),
                        );
                      },
                      child: Container(
                        height: screenSize.height * 0.1,
                        width: screenSize.width * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text('MergeSemantics',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Animatedpositioned(),
                          ),
                        );
                        print('daf');
                      },
                      child: Container(
                        height: screenSize.height * 0.1,
                        width: screenSize.width * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text('Animatedpositioned',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Animate(),
                          ),
                        );
                        print('daf');
                      },
                      child: Container(
                        height: screenSize.height * 0.1,
                        width: screenSize.width * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text('AnimatedContainer',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenSize.height * 0.01,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyStatefulWidget(),
                          ),
                        );
                      },
                      child: Container(
                        height: screenSize.height * 0.1,
                        width: screenSize.width * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text('AnimatedBuilder',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ABC(),
                          ),
                        );
                        print('daf');
                      },
                      child: Container(
                        height: screenSize.height * 0.1,
                        width: screenSize.width * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text('AnimatedAlign',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => XYZ(),
                          ),
                        );
                        print('daf');
                      },
                      child: Container(
                        height: screenSize.height * 0.1,
                        width: screenSize.width * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text('AnimatedSize',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenSize.height * 0.01,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AA(),
                          ),
                        );
                        print('daf');
                      },
                      child: Container(
                        height: screenSize.height * 0.1,
                        width: screenSize.width * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text('AnimatedWidget',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BB(),
                          ),
                        );
                        print('daf');
                      },
                      child: Container(
                        height: screenSize.height * 0.1,
                        width: screenSize.width * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text('DecoratedBoxTransition',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CC(),
                          ),
                        );
                        print('daf');
                      },
                      child: Container(
                        height: screenSize.height * 0.1,
                        width: screenSize.width * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text('FadeTransition',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenSize.height * 0.01,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DD(),
                          ),
                        );
                        print('daf');
                      },
                      child: Container(
                        height: screenSize.height * 0.1,
                        width: screenSize.width * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text('PositionedTransition',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EE(),
                          ),
                        );
                        print('daf');
                      },
                      child: Container(
                        height: screenSize.height * 0.1,
                        width: screenSize.width * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text('RotationTransition',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FF(),
                          ),
                        );
                        print('daf');
                      },
                      child: Container(
                        height: screenSize.height * 0.1,
                        width: screenSize.width * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text('ScaleTransition',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenSize.height * 0.01,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GG(),
                          ),
                        );
                        print('daf');
                      },
                      child: Container(
                        height: screenSize.height * 0.1,
                        width: screenSize.width * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text('SizeTransition',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HH(),
                          ),
                        );
                        print('daf');
                      },
                      child: Container(
                        height: screenSize.height * 0.1,
                        width: screenSize.width * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text('SlideTransition',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => II(),
                          ),
                        );
                        print('daf');
                      },
                      child: Container(
                        height: screenSize.height * 0.1,
                        width: screenSize.width * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text('Image Icon',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenSize.height * 0.01,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => JJ(),
                          ),
                        );
                        print('daf');
                      },
                      child: Container(
                        height: screenSize.height * 0.1,
                        width: screenSize.width * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text('FutureBuilder',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => KK(),
                          ),
                        );
                        print('daf');
                      },
                      child: Container(
                        height: screenSize.height * 0.1,
                        width: screenSize.width * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text('StreamBuilder',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LL(),
                          ),
                        );
                        print('daf');
                      },
                      child: Container(
                        height: screenSize.height * 0.1,
                        width: screenSize.width * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text('AppBar',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenSize.height * 0.01,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MM(),
                          ),
                        );
                        print('daf');
                      },
                      child: Container(
                        height: screenSize.height * 0.1,
                        width: screenSize.width * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text('Column',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NN(),
                          ),
                        );
                        print('daf');
                      },
                      child: Container(
                        height: screenSize.height * 0.1,
                        width: screenSize.width * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text('Container',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OO(),
                          ),
                        );
                        print('daf');
                      },
                      child: Container(
                        height: screenSize.height * 0.1,
                        width: screenSize.width * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text('ElevatedButton',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenSize.height * 0.01,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PP(),
                          ),
                        );
                        print('daf');
                      },
                      child: Container(
                        height: screenSize.height * 0.1,
                        width: screenSize.width * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text('Row',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QQ(),
                          ),
                        );
                        print('daf');
                      },
                      child: Container(
                        height: screenSize.height * 0.1,
                        width: screenSize.width * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text('Scaffold',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RR(),
                          ),
                        );
                        print('daf');
                      },
                      child: Container(
                        height: screenSize.height * 0.1,
                        width: screenSize.width * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text('Text',
                              style: TextStyle(fontWeight: FontWeight.bold)),
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
    );
  }
}
