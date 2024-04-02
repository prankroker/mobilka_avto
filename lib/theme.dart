import 'package:flutter/material.dart';

ThemeData buildAppTheme(){
  return ThemeData(
      primarySwatch: Colors.cyan,
      textButtonTheme:TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.cyan,
          )
      ),
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black),
        color: Colors.cyan,
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius:  BorderRadius.circular(10.0),
        ),
      )
  );
}