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
      child: ListTile(
        onTap: () {
          print(context.widget.toString());
        },
        leading: Image.network(product.imageurl),
        title: Text(product.productname),
        subtitle: Text(product.sellername.toUpperCase()),
        trailing: Text(
          "\$ ${product.productMrp}",
          textScaleFactor: 1.2,
          style: TextStyle(
            color: Colors.purple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
