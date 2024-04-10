import 'dart:async';

import 'package:flutter/material.dart';

class StopWatchScreen extends StatefulWidget {
  const StopWatchScreen({super.key});

  @override
  State<StopWatchScreen> createState() => _StopWatchScreenState();
}

class _StopWatchScreenState extends State<StopWatchScreen> {
  Timer? _timer;

  int _time = 0;
  bool _isRunning = false;

  List<String> _lapTimes = [];

  void _clickButton() {
    _isRunning = !_isRunning;

    if (_isRunning) {
      _start();
    } else {
      _pause();
    }
  }

  void _start() {}
  void _pause() {}

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('스탑워치'),
        ),
        body: Column(
          children: [
            const SizedBox(height: 30,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '0',
                  style: TextStyle(fontSize: 50),
                ),
                Text(
                  '00',
                )
              ],
            ),
            SizedBox(
              width: 100,
              height: 200,
              child: ListView(
                children: [
                   Center(child: Text('111')),
                  Text('111'),
                  Text('111'),
                  Text('111'),
                  Text('111'),
                  Text('111'),
                  Text('111'),
                  Text('111'),
                  Text('111'),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  backgroundColor: Colors.lime,
                  onPressed: () {},
                  child: const Icon(Icons.refresh),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.pink,
                  onPressed: () {
                    setState(() {
                      _clickButton();
                    });
                  },
                  child: _isRunning ? const Icon(Icons.pause ): const Icon(Icons.play_arrow),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.lightBlue,
                  onPressed: () {},
                  child: const Icon(Icons.add),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ));
  }
}
