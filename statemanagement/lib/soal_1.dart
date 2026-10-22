import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement/soalcontroller.dart';

class soal1 extends StatelessWidget {
  const soal1({super.key});

  @override
  Widget build(BuildContext context) {
    final soalcontroller control = Get.find<soalcontroller>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Soal 1"),
      ),
      body: Column(
        children: [
          Text("Siti memiliki 45 kelereng. Dia memberikan 12 kelereng kepada adiknya. Setelah itu, dia mendapatkan 18 kelereng lagi dari temannya. Berapa jumlah kelereng Siti sekarang?",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25
          )),
          TextField(
            controller: control.tamb1,
            decoration: InputDecoration(
              hint: Text("Kelereng Siti")
            ),
          ),
          TextField(
            controller: control.tamb2,
            decoration: InputDecoration(
                hint: Text("Pemberian Adik Siti")
            ),
          ),
          TextField(
            controller: control.tamb3,
            decoration: InputDecoration(
                hint: Text("Pemberian Teman Siti")
            ),
          ),
          ElevatedButton(onPressed: () {
            control.tambah1();
          }, child: Text("Hitung")),
          Obx(() => Text("Total Kelereng Siti: ${control.hasil.value}"))
        ],
      ),
    );
  }
}
