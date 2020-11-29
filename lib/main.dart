import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxflutterexample/data/controllers/charactersController.dart';
import 'package:getxflutterexample/data/service/rickAndMortyService.dart';
import 'package:getxflutterexample/presentation/pages/home_page.dart';

void main() {
  Get.put(RickAndMortyService());
  Get.put(CharacterController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        locale: Get.deviceLocale,
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(primaryColor: Colors.black),
        home: HomePage());
  }
}
