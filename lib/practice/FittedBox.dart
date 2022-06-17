import 'package:flutter/material.dart';

class NNN extends StatelessWidget {
  const NNN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            height: 350,
            width: 350,
            child: FittedBox(
              fit: BoxFit.fill,
              child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiiasRSzouTJ_ZFEK7aukZRVWUQzrm4c2JpA&usqp=CAU'),
            ),
          ),
        ),
      ),
    );
  }
}
