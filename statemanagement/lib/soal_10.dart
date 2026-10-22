import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement/soalcontroller.dart';

class soal10 extends StatelessWidget {
  const soal10({super.key});

  @override
  Widget build(BuildContext context) {
    final soalcontroller control = Get.find<soalcontroller>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Soal 10"),
      ),
      body: Column(
        children: [
          Text("Ibu membeli 15 kg beras seharga Rp12.500 per kg dan 8 kg gula seharga Rp14.000 per kg. Berapa total belanja ibu?",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
            ),),
          TextField(
            controller: control.tamb20,
            decoration: InputDecoration(
                hint: Text("Beras")
            ),
          ),
          TextField(
              controller: control.tamb21,
            decoration: InputDecoration(
                hint: Text("Gula")
            ),
          ),
          ElevatedButton(onPressed: () {
            control.tambah11();
          }, child: Text("Hitung")),
          Obx(() => Text("Harga Total Beras: ${control.hasil12.value}")),
          Obx(() => Text("Harga Total gula: ${control.hasil13.value}")),
          Obx(() => Text("Harga keseluruhan: ${control.hasil11.value}")),
        ],
      ),
    );
  }
}
