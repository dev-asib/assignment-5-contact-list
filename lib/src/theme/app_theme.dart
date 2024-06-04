import 'package:contact_list/src/utils/color_pallete.dart';
import 'package:flutter/material.dart';

ThemeData buildLightThemeData() {
  return ThemeData(


    appBarTheme: AppBarTheme(
      color: AppColors.themeColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      titleTextStyle: TextStyle(
          color: AppColors.white, fontWeight: FontWeight.w600, fontSize: 24),
      centerTitle: true,
      toolbarHeight: 80,
    ),


    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.grey, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.grey, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.red, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.red, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      hintStyle: TextStyle(color: AppColors.grey),
    ),


    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        fixedSize: Size.fromWidth(double.maxFinite),
        backgroundColor: AppColors.themeColor,
        foregroundColor: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
      ),
    ),


    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      titleTextStyle: TextStyle(
          color: AppColors.black, fontSize: 25, fontWeight: FontWeight.bold),
      contentTextStyle: TextStyle(
          color: AppColors.black, fontWeight: FontWeight.w500, fontSize: 18),
    ),


    listTileTheme: ListTileThemeData(
      tileColor: Colors.grey.shade300,
      contentPadding: EdgeInsets.symmetric(horizontal: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      subtitleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    ),
  );


}
