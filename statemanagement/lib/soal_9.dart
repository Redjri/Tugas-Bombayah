import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement/soalcontroller.dart';

class soal9 extends StatelessWidget {
  const soal9({super.key});

  @override
  Widget build(BuildContext context) {
    final soalcontroller control = Get.find<soalcontroller>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Soal 9"),
      ),
      body: Column(
        children: [
          Text("Di kebun ada 4.536 pohon mangga, 3.248 pohon rambutan, dan 2.876 pohon durian. Berapa jumlah pohon di kebun?",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
            ),),
          TextField(
            controller: control.tamb17,
            decoration: InputDecoration(
                hint: Text("Pohon Mangga")
            ),
          ),
          TextField(
              controller: control.tamb18,
            decoration: InputDecoration(
                hint: Text("Pohon Rambutan")
            ),
          ),
          TextField(
              controller: control.tamb19,
            decoration: InputDecoration(
                hint: Text("Pohon Durian")
            ),
          ),
          ElevatedButton(onPressed: () {
            control.tambah10();
          }, child: Text("Hitung")),
          Obx(() => Text("Jumlah pohon di kebun: ${control.hasil10.value}")),
        ],
      ),
    );
  }
}
