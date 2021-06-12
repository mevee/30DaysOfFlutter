import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:test2/models/product.dart';
import 'package:test2/util/strings.dart';
import 'package:test2/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductDetail extends StatelessWidget {
  final Product product;
  const ProductDetail({Key key, @required this.product})
      : assert(product != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).canvasColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text("${product.productname}"),
        ),
        bottomNavigationBar: Container(
          color: Theme.of(context).cardColor,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "\$${product.productSellingprice}",
                  style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Add to cart",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      StadiumBorder(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Hero(
                tag: product.id,
                child: Container(
                  width: double.infinity,
                  height: 250,
                  child: Image.network(product.imageurl),
                ),
              ),
            ),
            Expanded(
                child: VxArc(
              height: 20,
              edge: VxEdge.TOP,
              arcType: VxArcType.CONVEY,
              child: Container(
                color: context.cardColor,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 28.0),
                      child: Text(
                        "${product.productname}",
                        style: TextStyle(
                            color: context.accentColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Sold By: ${product.sellername}",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.normal),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          " \$${product.productMrp}",
                          textScaleFactor: 1.3,
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
                            // color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "$dummyText",
                          style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              wordSpacing: 2.6),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ))
          ],
        ));
  }
}

// LayoutBuilder(
//                 builder: (BuildContext context, BoxConstraints constraints) {
//                   return CustomPaint(
//                     painter: MyArc(),
//                     size: Size(constraints.maxWidth, constraints.maxHeight),
//                   );
//                 },
//               ),
class MyArc extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    // Paint circlePaint = Paint();
    // circlePaint.color = Colors.green;
    // canvas.drawCircle(Offset(height / 2, width / 2), width * .7, circlePaint);

    Paint archPaint = Paint();
    archPaint.color = Colors.green;
    archPaint.strokeWidth = 10;
    Rect arckArea = Rect.fromLTWH(0, 0, width, height * .1);
    canvas.drawArc(arckArea, math.pi, -math.pi, true, archPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
    // throw UnimplementedError();
  }
}
