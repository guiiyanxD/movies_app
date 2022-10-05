import 'package:flutter/material.dart';



class AppTheme {

  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary,

    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0
    ),

      floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 0
    ),

      textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary)
    ),

    iconTheme: const IconThemeData(
      color: primary
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary,
        shape: const StadiumBorder(),
        elevation: 5,
      )
    ),
    
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: primary),

      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),

      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),

      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),

      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(10), topLeft: Radius.circular(10)),
      ),

      suffixIconColor: primary,

    )
  );
}
