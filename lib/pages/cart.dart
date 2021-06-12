import 'package:flutter/material.dart';
import 'package:test2/widgets/themes.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        title: Text(
          "Cart (4)",
        ),
        // iconTheme: IconThemeData(color: Theme.of(context).buttonColor),
        // textTheme: Theme.of(context).,
      ),
      body: Container(
          // color: Colors.amberAccent,
          ),
    );
  }
}
