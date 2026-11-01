import 'dart:ffi';

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

  //soal 3
  var stockmap = <String, int> {
    "B001" : 10,
    "B002" : 15,
  }.obs;

  final tecc = TextEditingController();


  void stokupdate (String id) {
    int quantity = int.parse(tecc.text);

    if (stockmap.containsKey(id)) {
      stockmap[id] = quantity;
    }
  }

  //soal 4
  var bookmarks = <String, String> {
    "ART01": "Kabar Berita A",
    "ART02": "Kabar Berita B"
  }.obs;

  void removeBookmark(String articleId) {
    bookmarks.remove(articleId);
  }
}