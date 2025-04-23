import 'package:demo_zone/views/country_list/country_list_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '_shared/theme_data.dart';
import 'controllers/theme_controller/theme_controller.dart';



void main() async{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return MaterialApp(
        title: 'Country App',
        debugShowCheckedModeBanner:false,
        theme: themeController.isDarkMode.value ? darkTheme : lightTheme,
        home:  CountryListPage() ,
      );
    });
  }
}