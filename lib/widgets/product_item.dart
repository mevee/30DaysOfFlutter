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
      color: Theme.of(context).cardColor,
      child: Column(
        children: [
          SizedBox(
            height: 6.0,
            width: 6.06,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Stock : ${product.qty}",
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Off : ${product.discountPercent}%",
                  style: TextStyle(
                    color: Colors.green[200],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Hero(
            tag: product.id,
            child: Container(
              height: 160.00,
              margin: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  color: Theme.of(context).canvasColor,
                  shape: BoxShape.rectangle),
              width: double.infinity,
              child: Image.network(
                product.imageurl,
                fit: BoxFit.fill,
              ),
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
                  color: Theme.of(context).buttonColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 2.0,
              ),
              Text(
                "\$${product.productSellingprice}",
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),

          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Add to cart",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            style:
                ButtonStyle(shape: MaterialStateProperty.all(StadiumBorder())),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
