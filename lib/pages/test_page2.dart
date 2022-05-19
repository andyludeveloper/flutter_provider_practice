import 'package:flutter/material.dart';
import 'package:flutter_practice/models/test_result.dart';
import 'package:flutter_practice/pages/result_page.dart';
import 'package:provider/provider.dart';

class TestPage2 extends StatelessWidget {
  static const testName = "Test2";

  const TestPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, TestResult testResult, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(testName),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  testName,
                  style: TextStyle(fontSize: 30.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          context
                              .read<TestResult>()
                              .updateResult(testName, false);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => ResultPage()));
                        },
                        child: const Text("Fail"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.redAccent)),
                    ElevatedButton(
                        onPressed: () {
                          testResult.updateResult(testName, true);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => ResultPage()));
                        },
                        child: const Text("Pass"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.lightGreen))
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
