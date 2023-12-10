import 'package:flutter/material.dart';
import 'package:flutter_learn/views/homeview.dart';

class Myapp extends StatelessWidget {
  const Myapp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Learn",
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: HomeView(),
    );
  }
}
