import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:test2/data/mydb.dart';
import 'package:test2/pages/product_detail.dart';
import 'package:test2/util/routes.dart';
import 'package:test2/widgets/product_item.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with LoadingListener {
  MyDatabase _db;

  @override
  void onCompleted() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    _db = MyDatabase();
    // _db.getProductList(this);
    _db.loadData(this);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).buttonColor,
        child: Icon(
          CupertinoIcons.cart,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pushNamed(context, MyRoutes.cart);
        },
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Catelog App",
                textAlign: TextAlign.center,
                maxLines: 2,
                style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 8),
              child: Text(
                "welcome Vikesh",
                textAlign: TextAlign.center,
                maxLines: 2,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
              ),
            ),
            if (_db.dataList == null)
              Center(child: CircularProgressIndicator())
            else
              Expanded(
                child: StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  scrollDirection: Axis.vertical,
                  itemCount: _db.dataList.length,
                  itemBuilder: (context, position) {
                    return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDetail(
                                      product: _db.dataList[position])));
                        },
                        child: ProductItem(product: _db.dataList[position]));
                  },
                  staggeredTileBuilder: (int index) =>
                      // StaggeredTile.count(1, index.isEven ? 2 : 2),
                      StaggeredTile.fit(1),
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 2.0,
                ),
              ),
          ],
        ),
      ),
      // drawer: MyDrawer(),
    );
  }
}
