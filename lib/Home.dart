// ignore_for_file: prefer_const_constructors, avoid_print, unnecessary_import, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/Material%20Components/BottomNavigationBar.dart';
import 'package:flutter_widgets/Material%20Components/Buttons/DropdownButton.dart';
import 'package:flutter_widgets/Material%20Components/Drawer.dart';
import 'package:flutter_widgets/Material%20Components/TabBar.dart';
import 'package:flutter_widgets/practice/AbsorbPointer.dart';
import 'package:flutter_widgets/practice/AnimatedAlign.dart';
import 'package:flutter_widgets/practice/AnimatedBuilder.dart';
import 'package:flutter_widgets/practice/AnimatedContainer.dart';
import 'package:flutter_widgets/practice/AnimatedPositioned.dart';
import 'package:flutter_widgets/practice/AnimatedSize.dart';
import 'package:flutter_widgets/practice/AnimatedWidget.dart';
import 'package:flutter_widgets/practice/AppBar.dart';
import 'package:flutter_widgets/practice/AspectRatio.dart';
import 'package:flutter_widgets/practice/Autocomplete.dart';
import 'package:flutter_widgets/practice/Column.dart';
import 'package:flutter_widgets/practice/Container.dart';
import 'package:flutter_widgets/practice/CupertinoActionSheet.dart';
import 'package:flutter_widgets/practice/CupertinoAlertDialog.dart';
import 'package:flutter_widgets/practice/CupertinoButton.dart';
import 'package:flutter_widgets/practice/CupertinoContextMenu.dart';
import 'package:flutter_widgets/practice/CupertinoDatePicker.dart';
import 'package:flutter_widgets/practice/CupertinoNavigationBar.dart';
import 'package:flutter_widgets/practice/CupertinoPageScaffold.dart';
import 'package:flutter_widgets/practice/CupertinoPicker.dart';
import 'package:flutter_widgets/practice/CupertinoScrollbar.dart';
import 'package:flutter_widgets/practice/CupertinoSearchTextField.dart';
import 'package:flutter_widgets/practice/CupertinoSegmentedControl.dart';
import 'package:flutter_widgets/practice/CupertinoSlider.dart';
import 'package:flutter_widgets/practice/CupertinoSliverNavigationBar.dart';
import 'package:flutter_widgets/practice/CupertinoSwitch.dart';
import 'package:flutter_widgets/practice/CupertinoTabBar.dart';
import 'package:flutter_widgets/practice/CupertinoTabScaffold.dart';
import 'package:flutter_widgets/practice/CupertinoTextField.dart';
import 'package:flutter_widgets/practice/CupertinoTimerPicker.dart';
import 'package:flutter_widgets/practice/CustomMultiChildLayout.dart';
import 'package:flutter_widgets/practice/CustomScrollView.dart';
import 'package:flutter_widgets/practice/DecoratedBoxTransition.dart';
import 'package:flutter_widgets/practice/Dismissible.dart';
import 'package:flutter_widgets/practice/Draggable.dart';
import 'package:flutter_widgets/practice/ElevatedButton.dart';
import 'package:flutter_widgets/practice/Expanded.dart';
import 'package:flutter_widgets/practice/FittedBox.dart';
import 'package:flutter_widgets/practice/Flow.dart';
import 'package:flutter_widgets/practice/Form.dart';
import 'package:flutter_widgets/practice/FractionallySizedBox.dart';
import 'package:flutter_widgets/practice/FutureBuilder.dart';
import 'package:flutter_widgets/practice/GestureDetector.dart';
import 'package:flutter_widgets/practice/GridView.dart';
import 'package:flutter_widgets/practice/Hero.dart';
import 'package:flutter_widgets/practice/IgnorePointer.dart';
import 'package:flutter_widgets/practice/Image%20Icon.dart';
import 'package:flutter_widgets/practice/InteractiveViewer.dart';
import 'package:flutter_widgets/practice/LayoutBuilder.dart';
import 'package:flutter_widgets/practice/MergeSemantics.dart';
import 'package:flutter_widgets/practice/Offstage.dart';
import 'package:flutter_widgets/practice/PositionedTransition.dart';
import 'package:flutter_widgets/practice/RotationTransition.dart';
import 'package:flutter_widgets/practice/Row.dart';
import 'package:flutter_widgets/practice/Scaffold.dart';
import 'package:flutter_widgets/practice/SizeTransition.dart';
import 'package:flutter_widgets/practice/SlideTransition.dart';
import 'package:flutter_widgets/practice/SliverAppBar.dart';
import 'package:flutter_widgets/practice/StreamBuilder.dart';
import 'package:flutter_widgets/practice/Table.dart';
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
                              textAlign: TextAlign.center,
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
                              textAlign: TextAlign.center,
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
                              textAlign: TextAlign.center,
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
                              textAlign: TextAlign.center,
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
                              textAlign: TextAlign.center,
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
                              textAlign: TextAlign.center,
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
                              textAlign: TextAlign.center,
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
                              textAlign: TextAlign.center,
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
                              textAlign: TextAlign.center,
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
                              textAlign: TextAlign.center,
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
                              textAlign: TextAlign.center,
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
                              textAlign: TextAlign.center,
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
                              textAlign: TextAlign.center,
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
                              textAlign: TextAlign.center,
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
                              textAlign: TextAlign.center,
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
                              textAlign: TextAlign.center,
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
                              textAlign: TextAlign.center,
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
                              textAlign: TextAlign.center,
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
                              textAlign: TextAlign.center,
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
                              textAlign: TextAlign.center,
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
                              textAlign: TextAlign.center,
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
                              textAlign: TextAlign.center,
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
                              textAlign: TextAlign.center,
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
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenSize.height * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "IOS",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ActionSheetSample(
                              title: '',
                            ),
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
                          child: Text('CupertinoActionSheet',
                              textAlign: TextAlign.center,
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
                            builder: (context) => SS(
                              title: '',
                            ),
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
                          child: Text('CupertinoAlertDialog',
                              textAlign: TextAlign.center,
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
                            builder: (context) => TT(),
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
                          child: Text('CupertinoButton',
                              textAlign: TextAlign.center,
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
                            builder: (context) => UU(),
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
                          child: Text('CupertinoContextMenu',
                              textAlign: TextAlign.center,
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
                            builder: (context) => VV(),
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
                          child: Text(
                            'CupertinoDatePicker',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WW(),
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
                          child: Text(
                            'CupertinoNavigationBar',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
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
                            builder: (context) => XX(),
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
                          child: Text('CupertinoPageScaffold',
                              textAlign: TextAlign.center,
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
                            builder: (context) => CupertinoPickerSample(),
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
                          child: Text('CupertinoPicker',
                              textAlign: TextAlign.center,
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
                            builder: (context) => YY(),
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
                          child: Text('CupertinoScrollbar',
                              textAlign: TextAlign.center,
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
                            builder: (context) => MyPrefilledSearch(),
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
                          child: Text('CupertinoSearchTextField',
                              textAlign: TextAlign.center,
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
                            builder: (context) => SegmentedControlSample(),
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
                          child: Text('CupertinoSegmentedControl',
                              textAlign: TextAlign.center,
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
                            builder: (context) => CupertinoSliderSample(),
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
                          child: Text('CupertinoSlider',
                              textAlign: TextAlign.center,
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
                            builder: (context) => CupertinoNavBarSample(),
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
                          child: Text('CupertinoSliverNavigationBar',
                              textAlign: TextAlign.center,
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
                            builder: (context) => ZZ(),
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
                          child: Text('CupertinoSwitch',
                              textAlign: TextAlign.center,
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
                            builder: (context) => AAA(),
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
                          child: Text('CupertinoTabBar',
                              textAlign: TextAlign.center,
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
                            builder: (context) => BBB(),
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
                          child: Text('CupertinoTabScaffold',
                              textAlign: TextAlign.center,
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
                            builder: (context) => CCC(),
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
                          child: Text('CupertinoTextField',
                              textAlign: TextAlign.center,
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
                            builder: (context) => CupertinoTimerPickerSample(),
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
                          child: Text('CupertinoTimerPicker',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenSize.height * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Normal",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                AutocompleteBasicUserExample(),
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
                          child: Text('Autocomplete',
                              textAlign: TextAlign.center,
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
                            builder: (context) => DDD(),
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
                          child: Text('Form',
                              textAlign: TextAlign.center,
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
                            builder: (context) => EEE(),
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
                          child: Text('AbsorbPointer',
                              textAlign: TextAlign.center,
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
                            builder: (context) => FFF(),
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
                          child: Text('Dismissible',
                              textAlign: TextAlign.center,
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
                            builder: (context) => GGG(),
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
                          child: Text('Draggable',
                              textAlign: TextAlign.center,
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
                            builder: (context) => HHH(),
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
                          child: Text('GestureDetector',
                              textAlign: TextAlign.center,
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
                            builder: (context) => III(),
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
                          child: Text('IgnorePointer',
                              textAlign: TextAlign.center,
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
                            builder: (context) => JJJ(),
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
                          child: Text('InteractiveViewer',
                              textAlign: TextAlign.center,
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
                            builder: (context) => KKK(),
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
                          child: Text('Hero',
                              textAlign: TextAlign.center,
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
                            builder: (context) => LLL(),
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
                          child: Text('AspectRatio',
                              textAlign: TextAlign.center,
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
                            builder: (context) => MMM(),
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
                          child: Text('Expanded',
                              textAlign: TextAlign.center,
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
                            builder: (context) => NNN(),
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
                          child: Text('FittedBox',
                              textAlign: TextAlign.center,
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
                            builder: (context) => OOO(),
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
                          child: Text('FractionallySizedBox',
                              textAlign: TextAlign.center,
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
                            builder: (context) => PPP(),
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
                          child: Text('Offstage',
                              textAlign: TextAlign.center,
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
                            builder: (context) => QQQ(),
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
                          child: Text('CustomMultiChildLayout',
                              textAlign: TextAlign.center,
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
                            builder: (context) => FlowMenu(),
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
                          child: Text('Flow',
                              textAlign: TextAlign.center,
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
                            builder: (context) => ListTileSelectExample(),
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
                          child: Text('GridView',
                              textAlign: TextAlign.center,
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
                            builder: (context) => RRR(),
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
                          child: Text('LayoutBuilder',
                              textAlign: TextAlign.center,
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
                            builder: (context) => SSS(),
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
                          child: Text('Table',
                              textAlign: TextAlign.center,
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
                            builder: (context) => TTT(),
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
                          child: Text('CustomScrollView',
                              textAlign: TextAlign.center,
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
                            builder: (context) => UUU(),
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
                          child: Text('SliverAppBar',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenSize.height * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Material Components",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VVV(),
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
                          child: Text('BottomNavigationBar',
                              textAlign: TextAlign.center,
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
                            builder: (context) => WWW(),
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
                          child: Text('Drawer',
                              textAlign: TextAlign.center,
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
                            builder: (context) => XXX(),
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
                          child: Text('TaBar',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenSize.height * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Buttons",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => YYY(),
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
                          child: Text('DropdownButton',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    Spacer(),
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
