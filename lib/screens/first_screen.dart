import 'package:flutter/material.dart';
import 'package:playground_flutter/screens/return_data_screen.dart';

import 'replacement_screen.dart';
import 'second_screen.dart';
import 'second_screen_with_data.dart';

class FirstScreen extends StatelessWidget {
  static const String routeName = 'firstScreen';
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation and Routing'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, SecondScreen.routeName);
              },
              child: const Text('Go to Second Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  SecondScreenWithData.routeName,
                  arguments: 'This data is passed with navigation',
                );
              },
              child: const Text('Navigation with Data'),
            ),
            ElevatedButton(
              onPressed: () async {
                final scaffoldMessenger = ScaffoldMessenger.of(context);
                final result = await Navigator.pushNamed(
                    context, ReturnDataScreen.routeName);
                SnackBar snackbar = SnackBar(content: Text('$result'));
                scaffoldMessenger.showSnackBar(snackbar);
              },
              child: const Text('Return Data from Another Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(
                    context, ReplacementScreen.routeName);
              },
              child: const Text('Replace Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
