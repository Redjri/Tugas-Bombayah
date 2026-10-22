import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:listdanpeta/Menu.dart';
import 'package:listdanpeta/RxMap.dart';
import 'package:listdanpeta/lisvi.dart';
import 'package:listdanpeta/peta.dart';
import 'package:listdanpeta/prin.dart';
import 'package:listdanpeta/todos.dart';

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
            page: () => Menu()
        ),
        GetPage(
            name: '/lisview',
            page: () => ListListView()
        ),
        GetPage(
            name: '/peta',
            page: () => peta()
        ),
        GetPage(
            name: '/rxmap',
            page: () => Rxm()
        ),
        GetPage(
            name: '/todos',
            page: () => todo()
        ),
      ],
    );
  }
}
