import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String userName = '';

    return Scaffold(
      appBar: AppBar(title: Text('hello $userName')),
    );
  }
}
