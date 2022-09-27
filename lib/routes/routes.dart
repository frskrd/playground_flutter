import 'package:flutter/material.dart';

import '../screens/another_screen.dart';
import '../screens/first_screen.dart';
import '../screens/replacement_screen.dart';
import '../screens/return_data_screen.dart';
import '../screens/second_screen.dart';
import '../screens/second_screen_with_data.dart';

String initialRoute = FirstScreen.routeName;

Map<String, Widget Function(BuildContext)> routes = {
  FirstScreen.routeName: (context) => const FirstScreen(),
  SecondScreen.routeName: (context) => const SecondScreen(),
  SecondScreenWithData.routeName: (context) => SecondScreenWithData(
      data: ModalRoute.of(context)?.settings.arguments as String),
  ReturnDataScreen.routeName: (context) => const ReturnDataScreen(),
  ReplacementScreen.routeName: (context) => const ReplacementScreen(),
  AnotherScreen.routeName: (context) => const AnotherScreen()
};
