import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static Color cream = Color(0xfff5f5f5);
  static Color creamDark = Vx.gray900;
  static Color bluishDark = Color(0xff403b58);
  static Color bluishLight = Vx.indigo500;

  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        canvasColor: cream,
        cardColor: Colors.white,
        buttonColor: bluishDark,
        accentColor: bluishDark,
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black),
            textTheme: Theme.of(context).textTheme),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        canvasColor: creamDark,
        cardColor: Colors.black,
        buttonColor: bluishLight,
        accentColor: Colors.white,
        // textTheme: TextTheme(),
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: AppBarTheme(
            color: Colors.black,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.white),
            textTheme: Theme.of(context).textTheme.copyWith(
                headline6:
                    context.textTheme.headline6.copyWith(color: Colors.white))),
      );
}
