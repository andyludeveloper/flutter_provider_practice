import 'package:flutter/material.dart';
import 'package:flutter_practice/pages/test_page1.dart';
import 'package:provider/provider.dart';

import '../models/theme_notifier.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ThemeNotifier themeNotifier, child) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("SMI"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "SMI",
                style: TextStyle(fontSize: 30.0),
              ),
              SwitchListTile(
                  value: themeNotifier.darkTheme,
                  onChanged: (_) {
                    themeNotifier.toggleTheme();
                  }),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TestPage1()));
                  },
                  child: const Text("Start"))
            ],
          ),
        ),
      );
    });
  }
}
