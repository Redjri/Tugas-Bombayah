import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement/soalcontroller.dart';

class soal6 extends StatelessWidget {
  const soal6({super.key});

  @override
  Widget build(BuildContext context) {
    final soalcontroller control = Get.find<soalcontroller>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Soal 6"),
      ),
      body: Column(
        children: [
          Text("Sebuah lapangan berbentuk persegi panjang memiliki panjang 15 meter dan lebar 10 meter. Berapa keliling lapangan tersebut?",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
            ),),
          TextField(
            controller: control.tamb11,
            decoration: InputDecoration(
                hint: Text("Panjang Lapangan")
            ),
          ),
          TextField(
              controller: control.tamb11,
            decoration: InputDecoration(
                hint: Text("Lebar Lapangan")
            ),
          ),
          ElevatedButton(onPressed: () {
            control.tambah7();
          }, child: Text("Hitung")),
          Obx(() => Text("Keliling Lapangan: ${control.hasil6.value}"))
        ],
      ),
    );
  }
}
