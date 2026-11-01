import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class controllermap extends GetxController {
  //soal 1
  var categories = <String, String> {
    "KAT01": "Pakaian",
    "KAT02": "Elektronik",
    "KAT03": "Makanan"
  }.obs;

  //soal 2
  final tecid = TextEditingController();
  final tecname = TextEditingController();

  var cart = <String, String> {

  }.obs;

  void addItem () {
    cart[tecid.text] = tecname.text;
  }
}