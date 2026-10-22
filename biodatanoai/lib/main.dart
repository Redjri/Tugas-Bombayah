import 'package:biodatanoai/Eskul.dart';
import 'package:biodatanoai/FormPage.dart';
import 'package:biodatanoai/Menu.dart';
import 'package:biodatanoai/detail.dart';
import 'package:biodatanoai/successpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
            name: '/eskul',
            page: () => eskul()
        ),
        GetPage(
            name: '/form',
            page: () => form()
        ),
        GetPage(
            name: '/success',
            page: () => success()
        ),
        GetPage(
            name: '/detail',
            page: () => DetailPage()
        )
      ],
      home: HomePage(),
    );
  }
}
