import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test2/data/mydb.dart';
import 'package:test2/widgets/drawer.dart';
import 'package:test2/widgets/product_item.dart';

class HomePage extends StatelessWidget {
  MyDatabase _database = MyDatabase();

  @override
  Widget build(BuildContext context) {
    final dataList =
        List.generate(20, (index) => _database.getProductList()[0]);

    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: Text("Catelog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: dataList.length,
          itemBuilder: (context, position) {
            return ProductItem(product: dataList[position]);
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
