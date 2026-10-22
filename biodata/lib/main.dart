import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';
import 'splash_page.dart';
import 'login_page.dart';
import 'beranda_page.dart';
import 'tentang_page.dart';
import 'info_page.dart';
import 'biodata_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Aplikasi Biodata',
      initialRoute: '/splash',
      getPages: [
        GetPage(
          name: '/splash',
          page: () =>  SplashPage(),
        ),
        GetPage(
          name: '/login',
          page: () => LoginPage(),
        ),
        GetPage(
          name: '/beranda',
          page: () => BerandaPage(),
        ),
        GetPage(
          name: '/tentang',
          page: () =>  TentangPage(),
        ),
        GetPage(
          name: '/info',
          page: () =>  InfoPage(),
        ),
        GetPage(
          name: '/biodata/:nama',
          page: () =>  BiodataPage(),
        ),
        ]
    );
  }
}