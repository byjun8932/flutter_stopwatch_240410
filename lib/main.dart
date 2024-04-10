import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_stopwatch_240408/stop_watch_screen.dart';

void main() {
  Timer.periodic(Duration(seconds: 1), (timer) {
    print('111');
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const StopWatchScreen()
    );
  }
}