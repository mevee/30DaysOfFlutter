import 'package:flutter/material.dart';
import 'package:test2/pages/cart.dart';
import 'package:test2/pages/home_page.dart';
import 'package:test2/pages/login_page.dart';
import 'package:test2/util/routes.dart';
import 'package:test2/widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      // home: HomePage(),
      // initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.login: (context) => LoginPage(),
        MyRoutes.home: (context) => HomePage(),
        MyRoutes.home: (context) => HomePage(),
        MyRoutes.cart: (context) => CartPage(),
      },
    );
  }
}
