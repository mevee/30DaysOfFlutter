import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:test2/models/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({Key key, @required this.product})
      : assert(product != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(2),
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 6.0,
            width: 6.06,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Stock : ${product.qty}",
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Off : ${product.discountPercent}%",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Container(
            height: 160.00,
            width: double.infinity,
            child: Image.network(
              product.imageurl,
              // fit: BoxFit.cover,
            ),
          ),
          Expanded(
            flex: 0,
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(
                "${product.productname}\n",
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
            ),
          ),
          SizedBox(
            height: 2.0,
          ),

          (product.sellername.isNotEmpty)
              ? Text(
                  product.sellername.toUpperCase(),
                )
              : SizedBox(
                  height: 0,
                ),
          // Rating(),
          SizedBox(
            height: 2.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                " \$${product.productMrp}",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 2.0,
              ),
              Text(
                "\$${product.productSellingprice}",
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          SizedBox(
            height: 10,
          ),
          MaterialButton(
            padding: EdgeInsets.all(1.0),
            height: 40,
            minWidth: 120,
            color: Colors.lightBlueAccent,
            onPressed: () {},
            child: Text(
              "Add to cart",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
