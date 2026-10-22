import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement/soalcontroller.dart';

class soal2 extends StatelessWidget {
  const soal2({super.key});

  @override
  Widget build(BuildContext context) {
    final soalcontroller control = Get.find<soalcontroller>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Soal 2"),
      ),
      body: Column(
        children: [
          Text("Sebuah toko menjual 8 bungkus permen. Setiap bungkus berisi 12 permen. Berapa jumlah total permen yang dijual?",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
            ),),
          TextField(
            controller: control.tamb4,
            decoration: InputDecoration(
                hint: Text("Bungkus Permen")
            ),
          ),
          TextField(
              controller: control.tamb5,
            decoration: InputDecoration(
                hint: Text("Setiap bungkus berisi")
            ),
          ),
          ElevatedButton(onPressed: () {
            control.tambah2();
          }, child: Text("Hitung")),
          Obx(() => Text("Total permen: ${control.hasil2.value}"))
        ],
      ),
    );
  }
}
