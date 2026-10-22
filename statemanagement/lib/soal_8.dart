import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement/soalcontroller.dart';

class soal8 extends StatelessWidget {
  const soal8({super.key});

  @override
  Widget build(BuildContext context) {
    final soalcontroller control = Get.find<soalcontroller>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Soal 8"),
      ),
      body: Column(
        children: [
          Text("Sebuah kotak berisi 25 pensil. Pensil-pensil tersebut akan dibagikan kepada 6 anak secara merata. Berapa pensil yang diterima setiap anak dan berapa sisa pensil yang tidak terbagi?",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
            ),),
          TextField(
            controller: control.tamb15,
            decoration: InputDecoration(
                hint: Text("Kotak berisi berapa pensil")
            ),
          ),
          TextField(
              controller: control.tamb16,
            decoration: InputDecoration(
                hint: Text("Anak yang dibagikan")
            ),
          ),
          ElevatedButton(onPressed: () {
            control.tambah9();
          }, child: Text("Hitung")),
          Obx(() => Text("Pensil yang diterima: ${control.hasil8.value}")),
          Obx(() => Text("Sisa pensil yang tidak terbagi: ${control.hasil9.value}")),
        ],
      ),
    );
  }
}
