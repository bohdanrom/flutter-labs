import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  final String firstName, lastName;
  const WelcomePage(this.firstName, this.lastName, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome page'),
        centerTitle: true,
      ),
      body: Center(
          child: Text('Hello, $firstName $lastName',
              style: const TextStyle(fontSize: 48))),
    );
  }
}
