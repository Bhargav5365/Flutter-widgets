import 'package:flutter/material.dart';

class PPPP extends StatelessWidget {
  const PPPP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.amber,
                  child: const Center(
                    child: Text('Above'),
                  ),
                ),
              ),
              const Divider(
                height: 20,
                thickness: 5,
                indent: 20,
                endIndent: 23,
                color: Colors.black,
              ),
              Container(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    'Subheader',
                    style: Theme.of(context).textTheme.caption,
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Theme.of(context).colorScheme.primary,
                  child: const Center(
                    child: Text('Below'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
