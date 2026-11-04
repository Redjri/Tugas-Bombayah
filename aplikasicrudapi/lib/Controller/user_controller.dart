import 'dart:convert';

import 'package:aplikasicrudapi/Model/data_user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../Page/read_form.dart';

class UserController extends GetxController {
  final teNama = TextEditingController();
  final teAlamat = TextEditingController();
  final GenderSelected = "Laki-Laki".obs;

  final List<String> GenderList= [
    "Laki-Laki",
    "Perempuan"
  ];

  final ListDataUser = <DataUser>[].obs;
  final Loading = false.obs;

  static const baseUrl = "http://10.0.2.2:5000/users";

  @override
  void onInit() {
    super.onInit();
    AmbilDataUser();
  }

  AmbilDataUser() async {
    try {
      ListDataUser.value.clear();
      Loading.value = true;
      final request = await http.get(
        Uri.parse(baseUrl),
      );
      if (request.statusCode == 200) {
        Loading.value = false;
        final response = jsonDecode(request.body);
        for (var item in response) {
          ListDataUser.value.add(DataUser.fromJson(item));
        }
      }
      else {
        Loading.value = false;
        print("Gagal Menerima Response");
      }
    }
    catch (e) {
      Loading.value = false;
      print(e.toString());
    }
  }

  void TambahUser() async {
    if (teNama.text.isEmpty || teAlamat.text.isEmpty) {
      Get.snackbar(
        "Peringatan",
        "Data tidak boleh kosong!",
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return;
    }

    try {
      final dataUser = DataUser(
        nama: teNama.text,
        alamat: teAlamat.text,
        gender: GenderSelected.value,
      );

      final request = await http.post(
        Uri.parse(baseUrl),
        headers: {
          "content-type": "application/json; charset=UTF-8",
          "accept": "application/json",
        },
        body: jsonEncode(dataUser.toJson()),
      );

      if (request.statusCode == 200 || request.statusCode == 201) {
        final resData = jsonDecode(request.body);
        Kosongkan();
        AmbilDataUser();
        Get.snackbar(
            "Tambah user",
            resData['msg']
        );
      } else {
        Get.snackbar("Tambah user", "Gagal Tambah User");
      }
    } catch (e) {
      print(e.toString());
    }
  }

  void UbahDatauser(int s) async {
    try {
      final dataUbahuser = DataUser(
        nama: teNama.text,
        alamat: teAlamat.text,
        gender: GenderSelected.value
      );
      final request = await http.patch(
        Uri.parse("$baseUrl/${s}"),
        headers: {
          "content-type": "application/json",
          "accept": "application/json"
        },
        body: jsonEncode(dataUbahuser)
      );
      if (request.statusCode == 200) {
        final respone = jsonDecode(request.body);
        Get.snackbar(
            "Update",
            respone['msg']
        );
        Kosongkan();
        AmbilDataUser();
        Get.off(ReadForm());
      }
      else {
        Get.snackbar(
            "Update",
            "Gagal ubah user"
        );
      }
    }
    catch (e) {
      print(e.toString());
    }
  }

  void Kosongkan() {
    teNama.text = "";
    teAlamat.text = "";
    GenderSelected.value = "Laki-Laki";
  }

  HapusDataUser(int s) async {
    Get.defaultDialog(
        title: "Hapus User",
        middleText: "Anda Yaking ingin menghapus?",
        confirmTextColor: Colors.white,
        textConfirm: "Hapus",
        buttonColor: Colors.red,
        textCancel: "Tidak",
        onCancel: () {
          Get.back();
        },
        onConfirm: () async {
          Get.back();
          try {
            final request = await http.delete(
                Uri.parse("$baseUrl/$s")
            );
            if (request.statusCode == 200) {
              AmbilDataUser();
              final response = jsonDecode(request.body);
              Get.snackbar(
                  "Hapus",
                  response['msg']
              );
            }
            else {
              Get.snackbar(
                  "Hapus",
                  "Gagal Hapus User"
              );
            }
          }
          catch (e) {
            print(e.toString());
          }
        }
    );
  }
}