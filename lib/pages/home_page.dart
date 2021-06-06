import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:test2/data/mydb.dart';
import 'package:test2/widgets/drawer.dart';
import 'package:test2/widgets/product_item.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MyDatabase _db;

  @override
  void initState() {
    super.initState();
    _db = MyDatabase();
    _db.getProductList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: Text("Catelog App"),
      ),
      body: _db.dataList == null
          ? Center(child: CircularProgressIndicator())
          : StaggeredGridView.countBuilder(
              crossAxisCount: 2,
              scrollDirection: Axis.vertical,
              itemCount: _db.dataList.length,
              itemBuilder: (context, position) {
                return ProductItem(product: _db.dataList[position]);
              },
              staggeredTileBuilder: (int index) =>
                  // StaggeredTile.count(1, index.isEven ? 2 : 2),
                  StaggeredTile.fit(1),
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 2.0,
            ),
      drawer: MyDrawer(),
    );
  }
}
