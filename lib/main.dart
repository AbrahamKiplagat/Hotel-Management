import 'package:dtb/screens/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DTB Mobile Banking',
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back_ios),
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: RegisterComponent(),
        ),
      ),
    );
  }
}
