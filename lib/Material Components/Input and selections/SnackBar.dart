import 'package:flutter/material.dart';

class KKKK extends StatelessWidget {
  const KKKK({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
            child: const Text('Show Snackbar'),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  action: SnackBarAction(
                    label: 'Action',
                    onPressed: () {},
                  ),
                  content: const Text('Awesome SnackBar!'),
                  duration: const Duration(milliseconds: 1500),
                  width: 280.0,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                  ),
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
