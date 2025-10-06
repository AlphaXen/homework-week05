import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final int number;

  const HomeScreen({
    required this.number,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Home Screen'),
    );
  }
}