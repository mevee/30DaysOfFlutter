import 'package:test2/models/product.dart';

class MyDatabase {
  List<Product> getProductList() {
    final productList = [
      Product(
        id: "01130",
        productname: "os gunoi inox 7 litri",
        sellername: "addidas Sneaker",
        imageurl:
            "https://www.allinro.ro/uploads/productimages/p_494983417670.jpg",
        productMrp: "45.00",
        isFav: 1,
        discountPercent: "10",
        qty: "1",
        itemincart: 1,
        productSellingprice: "45.00",
        sizeId: "45.00",
        totalRating: 5.0,
      )
    ];
    return productList;
  }
}
