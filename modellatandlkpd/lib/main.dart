import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modellatandlkpd/Menu.dart';
import 'package:modellatandlkpd/Contoh/contoh1.dart';
import 'package:modellatandlkpd/Soal/Soal%2010.dart';
import 'package:modellatandlkpd/Soal/Soal1.dart';
import 'package:modellatandlkpd/Soal/Soal2.dart';
import 'package:modellatandlkpd/Soal/Soal3.dart';
import 'package:modellatandlkpd/Soal/Soal4.dart';
import 'package:modellatandlkpd/Soal/Soal5.dart';
import 'package:modellatandlkpd/Soal/Soal6.dart';
import 'package:modellatandlkpd/Soal/Soal7.dart';
import 'package:modellatandlkpd/Soal/Soal8.dart';
import 'package:modellatandlkpd/Soal/Soal9.dart';

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
            name: '/contoh1',
            page: () => cont1()
        ),
        GetPage(
            name: '/soal1',
            page: () => modlis()
        ),
        GetPage(
            name: '/soal2',
            page: () => tamod()
        ),
        GetPage(
            name: '/soal3',
            page: () => atdel()
        ),
        GetPage(
            name: '/soal4',
            page: () => hapmod()
        ),
        GetPage(
            name: '/soal5',
            page: () => hitungsiswa()
        ),
        GetPage(
            name: '/soal6',
            page: () => kalkulatorestoran()
        ),
        GetPage(
            name: '/soal7',
            page: () => DaftarChecklist()
        ),
        GetPage(
            name: '/soal8',
            page: () => Pemberisahn()
        ),
        GetPage(
            name: '/soal9',
            page: () => RatingPengguna()
        ),
        GetPage(
            name: '/soal10',
            page: () => fetchData()
        ),
      ],
    );
  }
}
