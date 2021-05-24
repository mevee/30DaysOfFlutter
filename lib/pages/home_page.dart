import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: Text("Catelog App"),
      ),
      body: Center(
          child: Text(
        "Wellcome to 30 days of Flutter",
        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
      )),
      // drawer: Drawer(),
    );
  }
}
