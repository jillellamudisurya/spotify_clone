import 'package:flutter/material.dart';

class TestingHome extends StatefulWidget {
  const TestingHome({Key? key}) : super(key: key);

  @override
  State<TestingHome> createState() => _TestingHomeState();
}

class _TestingHomeState extends State<TestingHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Testing Home'),
      ),
    );
  }
}
