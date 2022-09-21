import 'package:flutter/material.dart';
import 'welcome_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  final inputControllerForFirstName = TextEditingController();
  final inputControllerForLastName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home page'), centerTitle: true),
      body: Container(
        margin: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: TextField(
                  controller: inputControllerForFirstName,
                  decoration: const InputDecoration(
                    hintText: 'First Name',
                    border: OutlineInputBorder(),
                  ),
                )),
            TextField(
              controller: inputControllerForLastName,
              decoration: const InputDecoration(
                hintText: 'Last Name',
                border: OutlineInputBorder(),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 20),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WelcomePage(
                                  inputControllerForFirstName.text,
                                  inputControllerForLastName.text,
                                )));
                  },
                  color: Colors.green,
                  child: const Text('Sign in'),
                )),
          ],
        ),
      ),
    );
  }
}
