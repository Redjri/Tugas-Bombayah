import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'bmi_controller.dart';

class HasilBmi extends StatelessWidget {
  final BmiController controller = Get.find<BmiController>();

  @override
  Widget build(BuildContext context) {
    final nama = Get.arguments['nama'];
    return Scaffold(
      appBar: AppBar(title: const Text('Hasil BMI')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text('Nama: $nama', style: const TextStyle(fontSize: 18)),
            Text('Nilai BMI: ${controller.bmiValue.value.toStringAsFixed(1)}', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text('Kategori: ${controller.bmiCategory.value}', style: const TextStyle(fontSize: 18)),

            const SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: showBottomSheetInfo,
                  child: const Text('INFO BMI'),
                ),
                ElevatedButton(
                  onPressed: showDialogKonfirmasi,
                  child: const Text('KONFIRMASI'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void showBottomSheetInfo() {
    Get.bottomSheet(
      Container(
        color: Colors.white,
        padding:  EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text('Kategori BMI:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            SizedBox(height: 10),
            Text('< 18.5 : Berat badan kurang'),
            Text('18.5-24.9 : Rentang normal'),
            Text('25-29.9 : Berat badan berlebih'),
            Text('≥ 30 : Obesitas'),
          ],
        ),
      ),
    );
  }

  void showDialogKonfirmasi() {
    Get.defaultDialog(
      title: 'KONFIRMASI',
      textConfirm: 'Hitung Ulang',
      textCancel: 'Kembali',
      confirmTextColor: Colors.white,
      onConfirm: () {
        controller.resetData();
        Get.offAllNamed('/input-bmi');
      },
      onCancel: () {
        Get.offAllNamed('/home');
      },
    );
  }
}