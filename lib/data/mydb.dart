import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:test2/models/product.dart';

class MyDatabase {
  List<Product> dataList;

  MyDatabase() {
    getProductList(null);
  }

  void getProductList(LoadingListener listner) async {
    // loadData();
    if (listner != null) listner.onCompleted();
  }

  void listner() {}

  void loadData(LoadingListener listner) async {
    final catalogJson =
        await rootBundle.loadString("assets/files/product.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["product"];
    dataList = List.from(productsData)
        .map<Product>((item) => Product.fromMap(item))
        .toList();
    if (listner != null) listner.onCompleted();
  }
}

abstract class LoadingListener {
  void onCompleted();
}
