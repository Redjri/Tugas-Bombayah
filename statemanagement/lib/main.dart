import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement/bayar.dart';
import 'package:statemanagement/login.dart';

import 'package:statemanagement/menuUtama.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/login',
      getPages: [
        GetPage(name: '/login', page: () => login_page()),
        GetPage(name: '/menu', page: ()=> Kenu()),
        GetPage(name: '/bayar', page: () => bayar())
      ],
    );
  }
}
