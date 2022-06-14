import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/practice/AnimatedAlign.dart';
import 'package:flutter_widgets/practice/AnimatedBuilder.dart';
import 'package:flutter_widgets/practice/AnimatedContainer.dart';
import 'package:flutter_widgets/practice/AnimatedPositioned.dart';
import 'package:flutter_widgets/practice/AnimatedSize.dart';
import 'package:flutter_widgets/practice/MergeSemantics.dart';

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
                      color: Colors.grey[400],
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
                      color: Colors.grey[400],
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
                      color: Colors.grey[400],
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
                      color: Colors.grey[400],
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
                      color: Colors.grey[400],
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
                      color: Colors.grey[400],
                      child: Center(
                        child: Text('AnimatedSize',
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
    );
  }
}
