import 'package:flutter/material.dart';
import 'package:flutter_practice/pages/sensors.dart';
import 'package:flutter_practice/pages/test_page1.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "SMI",
              style: TextStyle(fontSize: 30.0),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const TestPage1()));
                },
                child: const Text("Start"))
          ],
        ),
      ),
    );
  }
}
