import 'package:flutter/material.dart';

class StopWatchScreen extends StatefulWidget {
  const StopWatchScreen({super.key});

  @override
  State<StopWatchScreen> createState() => _StopWatchScreenState();
}

class _StopWatchScreenState extends State<StopWatchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('스탑워치'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.lime,
            onPressed: () {},
            child: const Icon(Icons.refresh),
          ),
          FloatingActionButton(
            backgroundColor: Colors.pink,
            onPressed: () {},
            child: const Icon(Icons.play_arrow),
          ),
          FloatingActionButton(
            backgroundColor: Colors.lightBlue,
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
