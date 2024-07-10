import 'package:flutter/material.dart';

class AboutUspage extends StatelessWidget {
  const AboutUspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "AboutFoxy",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 0,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
