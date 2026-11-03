import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modellatandlkpd/Controller/ControllerSoal.dart';

class hitungsiswa extends StatelessWidget {
  const hitungsiswa({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(soalController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Soal 5'),
      ),
      body: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Obx(
                    () => ListView.builder(
                        shrinkWrap: true,
                        itemCount: c.students.length,
                        itemBuilder: (context, i) {
                          final p = c.students[i];
                          return ListTile(
                            title: Text(p.name),
                            subtitle: Text("Dinyatakan: ${p.isPassed}"),
                          );
                        }
                    )
                ),
                Obx(
                () => Text('Total Siswa yang Lulus: ${c.totalPassed}')
                )
              ],
            ),
          )
      ),
    );
  }
}
