import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Shortcuts(
      shortcuts: <LogicalKeySet, Intent>{
        LogicalKeySet(LogicalKeyboardKey.select): const ActivateIntent(),
      },
      child: MaterialApp(
        title: 'Luisfo TV',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}
