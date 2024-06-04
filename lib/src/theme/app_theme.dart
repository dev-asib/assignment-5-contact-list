import 'package:contact_list/src/utils/color_pallete.dart';
import 'package:flutter/material.dart';

ThemeData buildLightThemeData() {

  return ThemeData(


    appBarTheme: const AppBarTheme(
      color: AppColors.themeColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      titleTextStyle: TextStyle(
        color: AppColors.white,
        fontWeight: FontWeight.w600,
        fontSize: 24,
      ),
      centerTitle: true,
      toolbarHeight: 80,
    ),


    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.grey, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.grey, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.red, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.red, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      hintStyle: const TextStyle(color: AppColors.grey),
    ),


    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size.fromWidth(double.maxFinite),
        backgroundColor: AppColors.themeColor,
        foregroundColor: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),


    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius:  BorderRadius.circular(8),
      ),
      titleTextStyle: const TextStyle(
          color: AppColors.black,
        fontSize: 25,
        fontWeight: FontWeight.bold,),
      contentTextStyle: const TextStyle(
          color: AppColors.black,
        fontWeight: FontWeight.w500,
        fontSize: 18,
      ),
    ),


    listTileTheme: ListTileThemeData(
      tileColor: Colors.grey.shade300,
      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      titleTextStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      subtitleTextStyle:const  TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    ),
  );

}
