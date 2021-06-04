import 'dart:ffi';

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

  Product({this.id, this.productname, this.imageurl, 
  this.discountPercent, this.qty, this.totalRating, 
  this.sellername, this.sizeId, this.productMrp, this.productSellingprice, 
  this.itemincart, this.isFav});
}
