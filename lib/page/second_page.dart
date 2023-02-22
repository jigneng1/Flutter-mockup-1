import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: const Center(
        child: Text(
          'Congratulations!',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w500, color: Colors.blue),
        ),
      ),
    );
  }
}
