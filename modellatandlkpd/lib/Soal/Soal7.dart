import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:modellatandlkpd/Controller/ControllerSoal.dart';

class DaftarChecklist extends StatelessWidget {
  const DaftarChecklist({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(soalController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Soal 7'),
      ),
      body: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Obx(
                    () => ListView.builder(
                        shrinkWrap: true,
                        itemCount: c.medicines.length,
                        itemBuilder: (context, i) {
                          final p = c.medicines[i];
                          return CheckboxListTile(
                              title: Text(p.name),
                              subtitle: Text(p.id),
                              value: c.medicines[i].isTaken,
                              onChanged: (val) => c.ToggleTaken(i)
                          );
                        }
                    )
                )
              ],
            ),
          )
      ),
    );
  }
}
