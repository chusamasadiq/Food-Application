import 'package:flutter/material.dart';
import 'package:restaurants/pages/startscreen.dart';

void main() => runApp(restaurants());

class restaurants extends StatelessWidget {
  const restaurants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: StartScreen(),
    );
  }
}
