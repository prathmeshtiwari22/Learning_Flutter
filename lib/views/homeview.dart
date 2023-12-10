import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.lightBlue,
      child: const Center(
          child: Text(
        "Hello World",
        style: TextStyle(
          fontSize: 40,
          color: Colors.deepOrange,
          fontWeight: FontWeight.bold,
        ),
      )),
    );
  }
}
