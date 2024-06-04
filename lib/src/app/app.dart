import 'package:contact_list/src/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:contact_list/src/theme/app_theme.dart';


class ContactListApp extends StatelessWidget {
  const ContactListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  HomeView(),
      theme: buildLightThemeData(),
    );
  }
}
