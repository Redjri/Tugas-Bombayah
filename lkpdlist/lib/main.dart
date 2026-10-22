import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lkpdlist/belanja.dart';
import 'package:lkpdlist/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/menu',
      getPages: [
        GetPage(
            name: '/menu',
            page: () => menu()
        ),
        GetPage(
            name: '/belanja',
            page: () => belanja()
        ),
      ],
    );
  }
}