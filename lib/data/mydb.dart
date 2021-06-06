import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:test2/models/product.dart';

class MyDatabase {
  List<Product> dataList;

  void getProductList() async {
    _loadData();
  }

  void _loadData() async {
    final catalogJson = await rootBundle.loadString("assets/files/product.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["product"];
    dataList = List.from(productsData)
        .map<Product>((item) => Product.fromMap(item))
        .toList();
  }
}
