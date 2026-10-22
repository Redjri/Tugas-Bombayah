import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Searchcontroller extends GetxController {
  final textController = TextEditingController();

  var searchText = ''.obs;

  void onSearchChanged(String v) {
    searchText.value = v;
  }
}