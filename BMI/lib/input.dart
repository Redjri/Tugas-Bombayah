import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'bmi_controller.dart';

class InputBmi extends StatelessWidget {
  final controller = Get.put(BmiController());

  String nama = '';

  InputBmi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Input BMI')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Nama'),
              onChanged: (value) {
                nama = value;
              },
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Berat (kg)'),
              onChanged: (value) {

              },
            ),
            TextField(
              controller: controller.heightController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Tinggi (cm)'),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                controller.hitungBmi();

                Get.offNamed(
                  '/hasil-bmi',
                  arguments: {
                    'nama': nama,
                  },
                );
              },
              child: const Text('HITUNG'),
            ),
          ],
        ),
      ),
    );
  }
}