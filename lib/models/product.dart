
class Product {
  final String id;
  final String productname;
  final String imageurl;
  final String discountPercent;
  final String qty;
  final num totalRating;
  final String sellername;
  final String sizeId;
  final String productMrp;
  final String productSellingprice;
  final int itemincart;
  final int isFav;

  Product(
      {this.id,
      this.productname,
      this.imageurl,
      this.discountPercent,
      this.qty,
      this.totalRating,
      this.sellername,
      this.sizeId,
      this.productMrp,
      this.productSellingprice,
      this.itemincart,
      this.isFav});

  factory Product.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    return Product(
      id: map["id"],
      productname: map["productname"],
      imageurl: map["imageurl"],
      discountPercent: map["discount_percent"],
      qty: map["qty"],
      totalRating: map["total_rating"],
      sellername: map["sellername"],
      sizeId: map["size_id"],
      productMrp: map["product_mrp"],
      productSellingprice: map["product_sellingprice"],
      itemincart: map["itemincart"],
      isFav: map["is_fav"],
    );
  }
  Map<String, dynamic> toJson() => {
        "id": id,
        "productname": productname,
        "imageurl": imageurl,
        "discount_percent": discountPercent,
        "qty": qty,
        "total_rating": totalRating,
        "sellername": sellername,
        "size_id": sizeId,
        "product_mrp": productMrp,
        "product_sellingprice": productSellingprice,
        "itemincart": itemincart,
        "is_fav": isFav,
      };
}
