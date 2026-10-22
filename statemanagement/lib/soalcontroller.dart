import 'package:flutter/material.dart';
import 'package:get/get.dart';

class soalcontroller extends GetxController {
  final tamb1 = TextEditingController();
  final tamb2 = TextEditingController();
  final tamb3 = TextEditingController();
  var hasil = 0.obs;

  void  tambah1() {
    int? nilaiTamb1 = int.parse(tamb1.text);
    int? nilaiTamb2 = int.parse(tamb2.text);
    int? nilaiTamb3 = int.parse(tamb2.text);

    hasil.value = nilaiTamb1 + nilaiTamb2 + nilaiTamb3;
  }


  final tamb4 = TextEditingController();
  final tamb5 = TextEditingController();
  var hasil2 = 0.obs;

  void tambah2() {
    int? nilaiTamb4 = int.parse(tamb4.text);
    int? nilaiTamb5 = int.parse(tamb5.text);

    hasil2.value = nilaiTamb4 * nilaiTamb5;
  }

  final tamb6 = TextEditingController();
  final tamb7 = TextEditingController();
  var hasil3 = 0.obs;

  void tambah4() {
    int? nilaiTamb6 = int.parse(tamb6.text);
    int? nilaiTamb7 = int.parse(tamb7.text);

    hasil3.value =  nilaiTamb6 ~/ nilaiTamb7 ;
  }

  final tamb8 = TextEditingController();
  final tamb9 = TextEditingController();
  var hasil4 = 0.obs;

  void tambah5() {
    int? nilaiTamb8 = int.parse(tamb8.text);
    int? nilaiTamb9 = int.parse(tamb9.text);

    hasil4.value =  nilaiTamb8 ~/ nilaiTamb9 ;
  }

  final tamb10 = TextEditingController();
  var hasil5 = 0.obs;

  void tambah6() {
    int? nilaiTamb10 = int.parse(tamb10.text);

    hasil5.value =  nilaiTamb10 * nilaiTamb10 ;
  }

  final tamb11 = TextEditingController();
  final tamb12 = TextEditingController();
  var hasil6 = 0.obs;

  void tambah7() {
    int? nilaiTamb11 = int.parse(tamb11.text);
    int? nilaiTamb12 = int.parse(tamb12.text);

    hasil6.value =  2 + (nilaiTamb11 + nilaiTamb12);
  }

  final tamb14 = TextEditingController();
  final tamb13 = TextEditingController();
  var hasil7 = 0.obs;

  void tambah8() {
    int? nilaiTamb14 = int.parse(tamb14.text);
    int? nilaiTamb13 = int.parse(tamb13.text);

    hasil7.value =  nilaiTamb14 - nilaiTamb13;
  }

  final tamb15 = TextEditingController();
  final tamb16 = TextEditingController();
  var hasil8 = 0.obs;
  var hasil9 = 0.obs;

  void tambah9() {
    int? nilaiTamb15 = int.parse(tamb15.text);
    int? nilaiTamb16 = int.parse(tamb16.text);

    hasil8.value =  nilaiTamb15 ~/ nilaiTamb16;
    hasil9.value =  nilaiTamb15 % nilaiTamb16;
  }

  final tamb17 = TextEditingController();
  final tamb18 = TextEditingController();
  final tamb19 = TextEditingController();
  var hasil10 = 0.obs;

  void tambah10() {
    int? nilaiTamb17 = int.parse(tamb17.text);
    int? nilaiTamb18 = int.parse(tamb18.text);
    int? nilaiTamb19 = int.parse(tamb19.text);

    hasil10.value =  nilaiTamb17 + nilaiTamb18 + nilaiTamb19;
  }

  final tamb20 = TextEditingController();
  final tamb21 = TextEditingController();
  var hasil11 = 0.obs;
  var hasil12 = 0.obs;
  var hasil13 = 0.obs;

  void tambah11() {
    int? nilaiTamb20 = int.parse(tamb20.text);
    int? nilaiTamb21 = int.parse(tamb21.text);

    hasil12.value =  nilaiTamb20 * 12500;
    hasil13.value = nilaiTamb21 * 14000;
    hasil11.value = hasil12.value + hasil13.value;
  }
}