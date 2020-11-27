import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxflutterexample/data/rickAndMortyService.dart';
import 'package:getxflutterexample/data/controllers/charactersController.dart';
import 'package:getxflutterexample/presentation/pages/home_page.dart';

import 'data/controllers/characterDetailController.dart';

void main() {
  Get.put(RickAndMortyService());
  Get.put(CharacterController());
  Get.put(CharacterDetailController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage());
  }
}
