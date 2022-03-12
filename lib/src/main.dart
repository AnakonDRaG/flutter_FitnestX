import 'package:FitnestX/src/screens/example/index.dart';
import 'package:FitnestX/src/uikit/style/colors.dart';
import 'package:flutter/material.dart';

import 'uikit/style/theme.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: ThemeColors.whiteColors.normal
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Knight and Day',
      home: const SafeArea(
        child:  ExampleScreen(),
      ),
      theme: CustomTheme(context),
    );
  }
}
