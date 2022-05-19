import 'package:flutter/material.dart';
import 'package:flutter_practice/models/test_result.dart';
import 'package:provider/provider.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Result Page"),
        ),
        body: Consumer<TestResult>(builder: (context, testResult, _) {
          final result = testResult.result;
          return ListView.builder(
            itemBuilder: (context, index) {
              final item = result.keys.elementAt(index);
              final value = result[item];
              return ListTile(
                title: Text(item),
                trailing: value == true
                    ? const Icon(Icons.check_circle, color: Colors.lightGreen)
                    : const Icon(Icons.error_outline_sharp,
                        color: Colors.redAccent),
              );
            },
            itemCount: result.keys.length,
          );
        }));
  }
}
