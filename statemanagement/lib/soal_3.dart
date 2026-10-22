import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement/soalcontroller.dart';

class soal3 extends StatelessWidget {
  const soal3({super.key});

  @override
  Widget build(BuildContext context) {
    final soalcontroller control = Get.find<soalcontroller>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Soal 3"),
      ),
      body: Column(
        children: [
          Text("Ibu memiliki 60 kue. Kue-kue tersebut ingin dibagikan kepada 5 orang anak secara merata. Berapa banyak kue yang diterima setiap anak?",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
            ),),
          TextField(
            controller: control.tamb6,
            decoration: InputDecoration(
                hint: Text("Kue yang dimiliki Ibu")
            ),
          ),
          TextField(
              controller: control.tamb7,
            decoration: InputDecoration(
                hint: Text("Jumlah anak yang diberikan")
            ),
          ),
          ElevatedButton(onPressed: () {
            control.tambah4();
          }, child: Text("Hitung")),
          Obx(() => Text("Total banyak kue yang diterima: ${control.hasil3.value}"))
        ],
      ),
    );
  }
}
