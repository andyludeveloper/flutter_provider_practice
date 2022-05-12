import 'package:flutter/material.dart';
import 'package:flutter_practice/models/test_result.dart';
import 'package:flutter_practice/pages/test_page2.dart';
import 'package:provider/provider.dart';

class TestPage1 extends StatelessWidget {
  static const testName = "Test1";

  const TestPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(testName),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              "Test1",
              style: TextStyle(fontSize: 30.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                ElevatedButton(
                    onPressed: () {
                      context.read<TestResult>().updateResult(testName, false);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => TestPage2()));
                    },
                    child: const Text("Fail"),
                    style: ElevatedButton.styleFrom(primary: Colors.redAccent)),
                ElevatedButton(
                    onPressed: () {
                      context.read<TestResult>().updateResult(testName, true);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => TestPage2()));
                    },
                    child: Text("Pass"),
                    style: ElevatedButton.styleFrom(primary: Colors.lightGreen))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
