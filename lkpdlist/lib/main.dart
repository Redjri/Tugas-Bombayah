import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lkpdlist/Soal3.dart';
import 'package:lkpdlist/Soal1.dart';
import 'package:lkpdlist/Soal2.dart';
import 'package:lkpdlist/absen.dart';
import 'package:lkpdlist/belanja.dart';
import 'package:lkpdlist/belanjaonline.dart';
import 'package:lkpdlist/kasir.dart';
import 'package:lkpdlist/menu.dart';
import 'package:lkpdlist/tugasharian.dart';

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
        GetPage(
            name: '/absensi',
            page: () => absen()
        ),
        GetPage(
            name: '/kasir',
            page: () => AntrianKasir()
        ),
        GetPage(
            name: '/todolist',
            page: () => todolist()
        ),
        GetPage(
            name: '/belanjaon',
            page: () => belanjonline()
        ),
        GetPage(
            name: '/soal1',
            page: () => vimap()
        ),
        GetPage(
            name: '/soal2',
            page: () => manakeja()
        ),
        GetPage(
            name: '/soal3',
            page: () => datke()
        )
      ],
    );
  }
}