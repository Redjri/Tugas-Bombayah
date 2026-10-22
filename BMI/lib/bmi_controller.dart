import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BmiController extends GetxController {
  final nameController = TextEditingController();
  final weightController = TextEditingController();
  final heightController = TextEditingController();

  var bmiValue = 0.0.obs;
  var bmiCategory = ''.obs;

  void hitungBmi() {
    double weight = double.tryParse(weightController.text) ?? 0;
    double heightCm = double.tryParse(heightController.text) ?? 0;

    double heightM = heightCm / 100;

    if (heightM > 0 && weight > 0) {
      bmiValue.value = weight / (heightM * heightM);


      if (bmiValue.value < 18.5) {
        bmiCategory.value = "Berat badan kurang";
      } else if (bmiValue.value >= 18.5 && bmiValue.value <= 24.9) {
        bmiCategory.value = "Rentang normal";
      } else if (bmiValue.value >= 25.0 && bmiValue.value <= 29.9) {
        bmiCategory.value = "Berat badan berlebih";
      } else {
        bmiCategory.value = "Obesitas";
      }

      Get.snackbar(
        'Berhasil',
        'BMI berhasil dihitung',
        snackPosition: SnackPosition.BOTTOM,
      );

    } else {
      Get.snackbar('Error', 'Harap isi data dengan benar');
    }
  }

  void resetData() {
    nameController.clear();
    weightController.clear();
    heightController.clear();
  }
}