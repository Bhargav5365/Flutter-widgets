import 'package:flutter/material.dart';

class AutocompleteBasicUserExample extends StatelessWidget {
  const AutocompleteBasicUserExample({Key? key}) : super(key: key);

  static const List<User> _userOptions = <User>[
    User(name: 'Alice', email: 'alice@example.com'),
    User(name: 'Bob', email: 'bob@example.com'),
    User(name: 'Charlie', email: 'charlie123@gmail.com'),
  ];

  static String _displayStringForOption(User option) => option.name;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Autocomplete<User>(
            displayStringForOption: _displayStringForOption,
            optionsBuilder: (TextEditingValue textEditingValue) {
              if (textEditingValue.text == '') {
                return const Iterable<User>.empty();
              }
              return _userOptions.where(
                (User option) {
                  return option
                      .toString()
                      .contains(textEditingValue.text.toLowerCase());
                },
              );
            },
            onSelected: (User selection) {
              debugPrint(
                  'You just selected ${_displayStringForOption(selection)}');
            },
          ),
        ),
      ),
    );
  }
}

class User {
  const User({
    required this.email,
    required this.name,
  });

  final String email;
  final String name;

  @override
  String toString() {
    return '$name, $email';
  }

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is User && other.name == name && other.email == email;
  }

  @override
  int get hashCode => Object.hash(email, name);
}
