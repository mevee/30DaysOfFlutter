import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catelog App"),
      ),
      body: Center(child: Text("Wellcome to 30 days of Flutter")),
      drawer: Drawer(),
    );
  }
}