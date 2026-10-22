import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement/soalcontroller.dart';

class soal7 extends StatelessWidget {
  const soal7({super.key});

  @override
  Widget build(BuildContext context) {
    final soalcontroller control = Get.find<soalcontroller>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Soal 7"),
      ),
      body: Column(
        children: [
          Text("Budi mulai belajar pukul 14.00 dan selesai pukul 15.30. Berapa lama waktu yang digunakan Budi untuk belajar?",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
            ),),
          TextField(
            controller: control.tamb14,
            decoration: InputDecoration(
                hint: Text("Mulai belajar pada pukul")
            ),
          ),
          TextField(
              controller: control.tamb13,
            decoration: InputDecoration(
                hint: Text("Selesai pada pukul")
            ),
          ),
          ElevatedButton(onPressed: () {
            control.tambah8();
          }, child: Text("Hitung")),
          Obx(() => Text("Lama waktu belajar (disarankan tidak menggunakan : ): ${control.hasil7.value}")),
        ],
      ),
    );
  }
}
