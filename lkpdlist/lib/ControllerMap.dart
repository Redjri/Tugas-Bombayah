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

  // soal 5
  var attendance = <String, String> {
    "S01": "Hadir",
    "S02": "Izin",
    "S03": "Hadir",
    "S04": "Sakit",
    "S05": "Hadir"
  }.obs;

  int get totalHadir => attendance.values.where((status) => status == "Hadir").length;

  // soal 6
  var itemPrices = <String, int> {
    "Beras": 50000,
    "Minyak": 25000,
    "Gula": 15000
  }.obs;

  int get totalPrice => itemPrices.values.fold(0, (sum, price) => sum = price);

  // soal 7
  var userRatings = <String, int> {
    "UserA": 4,
    "UserB": 5
  }.obs;

  final rating = 0.0.obs;
  final rateName = TextEditingController();

  void setRange(double range) {
    rating.value = range;
  }

  void submitRating (String username) {
    userRatings[username] = rating.toInt();
  }

  //soal 8
  var activeFilter = <String, String> {
    "tipe": "Rumah",
    "lokasi": "Jakarta",
    "kamar": "3"
  }.obs;

  void resetFilters() {
    activeFilter.clear();
  }

  //soal 9
  var grades = <String, double> {
    "Matematika": 80.0,
    "Pemrograman": 90.0,
    "Basis Data" : 85.0
  }.obs;

  double get averageGrade {
    if (grades.isEmpty) return 0.0;
    double total = grades.values.fold(0.0, (sum, val) => sum + val);
    return total / grades.length;
  }

  // soal 10
  var emergencyContacts = <String, String> {
    "K01": "Budi",
    "K02": "Siti"
  }.obs;

  void importContacts (Map<String, String> importedData) {
    emergencyContacts.addAll(importedData);
  }
}