import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement/soalcontroller.dart';

class soal5 extends StatelessWidget {
  const soal5({super.key});

  @override
  Widget build(BuildContext context) {
    final soalcontroller control = Get.find<soalcontroller>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Soal 5"),
      ),
      body: Column(
        children: [
          Text("Di desa Bunga Mentari, ada sebuah taman yang berbentuk persegi dan memiliki panjang sisi 12 meter. Coba hitung, berapakah luas taman tersebut?",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
            ),),
          TextField(
            controller: control.tamb10,
            decoration: InputDecoration(
                hint: Text("Panjang sisi persegi")
            ),
          ),
          ElevatedButton(onPressed: () {
            control.tambah6();
          }, child: Text("Hitung")),
          Obx(() => Text("Luas taman: ${control.hasil5.value}"))
        ],
      ),
    );
  }
}
