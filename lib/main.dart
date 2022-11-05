import 'package:flutter/material.dart';
import 'package:hng_task_2/helpers/theme_provider.dart';
import 'package:hng_task_2/pages/splashPage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider()..loadPrefs(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, value, child) {
        return MaterialApp(
          title: 'Portfolio Demo',
          theme: ThemeData(
            primarySwatch: Colors.deepPurple,
          ),
          darkTheme: ThemeData.dark(),
          themeMode: value.themeMode,
          home: const SplashPage(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
