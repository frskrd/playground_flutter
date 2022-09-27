import 'package:flutter/material.dart';
import 'package:playground_flutter/screens/first_screen.dart';

class AnotherScreen extends StatelessWidget {
  static const String routeName = 'anotherScreen';
  const AnotherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Another Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, FirstScreen.routeName);
              },
              child: const Text('Back to First Screen'),
            )
          ],
        ),
      ),
    );
  }
}
