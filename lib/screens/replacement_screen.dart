import 'package:flutter/material.dart';
import 'package:playground_flutter/screens/another_screen.dart';

class ReplacementScreen extends StatelessWidget {
  static const String routeName = 'replacementScreen';
  const ReplacementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Replacement Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AnotherScreen.routeName);
              },
              child: const Text('Go To Another Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
