import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Controller extends GetxController{
  List<String> buah =[
    'Apel',
    'Mangga',
    'Jeruk',
    'Manggis',
    'Nanas'
  ];

  Map<String, int> stok = {
    'Apel': 10,
    'Jeruk': 5,
  };

  final jmlbuah = TextEditingController();
  final stock = <String, int> {
    'Apel': 10,
    'Jeruk': 5,
    'Mangga': 8,
  }.obs;

  void ubah(String k) {
    int v = int.parse(jmlbuah.text);
    stock[k] = v;
  }

  void hapus(String k) {
    stock.remove(k);
  }



  final todos = <String>[
    'Lopei',
    'Tugas RPL',
    'Obx',
  ].obs;

  void add(String t) {
    if (t.isNotEmpty) todos.add(t);
  }

  void remove(int i) {
    todos.removeAt(i);
  }
}