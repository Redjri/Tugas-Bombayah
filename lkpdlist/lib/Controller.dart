import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class controller extends GetxController {
  final tkb = TextEditingController();


  void tambah() {
    daftar.add(tkb.text);
  }

  List<String> daftar = [
    'Apel'
  ].obs;
}