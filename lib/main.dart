import 'package:flutter/material.dart';
import 'package:flutter_practice/models/theme_notifier.dart';
import 'package:flutter_practice/pages/start_page.dart';
import 'package:provider/provider.dart';

import 'models/test_result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeNotifier>(create: (_) => ThemeNotifier()),
        ChangeNotifierProvider<TestResult>(create: (_) => TestResult()),
      ],
      child: Consumer<ThemeNotifier>(
        builder: (context, themeNotifier, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme:
                themeNotifier.darkTheme ? ThemeData.dark() : ThemeData.light(),
            home: const StartPage(),
          );
        },
      ),
    );
  }
}
