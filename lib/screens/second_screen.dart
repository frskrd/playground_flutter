import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  static const String routeName = 'secondScreen';
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Back'),
        ),
      ),
    );
  }
}
