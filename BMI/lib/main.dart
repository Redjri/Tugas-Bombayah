import 'package:bmi/hasl_bmi.dart';
import 'package:bmi/input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/home',
      getPages: [
        GetPage(name: '/home', page: () => Home()),
        GetPage(name: '/input-bmi', page: () => InputBmi()),
        GetPage(name: '/hasil-bmi', page: () => HasilBmi()),
      ],
    );
  }
}