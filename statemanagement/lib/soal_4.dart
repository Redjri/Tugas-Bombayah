import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement/soalcontroller.dart';

class soal4 extends StatelessWidget {
  const soal4({super.key});

  @override
  Widget build(BuildContext context) {
    final soalcontroller control = Get.find<soalcontroller>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Soal 4"),
      ),
      body: Column(
        children: [
          Text("Ali memiliki seutas tali sepanjang 150 cm. Ia memotong tali tersebut menjadi 3 bagian yang sama panjang. Berapa panjang masing-masing bagian?",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
            ),),
          TextField(
            controller: control.tamb8,
            decoration: InputDecoration(
                hint: Text("Tali yang dimiliki Ali sepanjang")
            ),
          ),
          TextField(
              controller: control.tamb9,
            decoration: InputDecoration(
                hint: Text("Jumlah bagian yang dipotong")
            ),
          ),
          ElevatedButton(onPressed: () {
            control.tambah5();
          }, child: Text("Hitung")),
          Obx(() => Text("Panjang masing-masing bagian: ${control.hasil4.value}"))
        ],
      ),
    );
  }
}
