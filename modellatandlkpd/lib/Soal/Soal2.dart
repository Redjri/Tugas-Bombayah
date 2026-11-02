import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modellatandlkpd/Controller/ControllerSoal.dart';

class tamod extends StatelessWidget {
  const tamod({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(soalController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Soal 2'),
      ),
      body: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Obx(
                    () => ListView.builder(
                        shrinkWrap: true,
                        itemCount: c.taskList.length,
                        itemBuilder: (context, i) {
                          final p = c.taskList[i];
                          return ListTile(
                            title: Text(p.title),
                          );
                        }
                    )
                ),
                TextField(
                  controller: c.teTugasBaru,
                  decoration: InputDecoration(
                    labelText: "Tugas"
                  ),
                ),
                ElevatedButton(
                    onPressed: () => c.addTask(),
                    child: Text('Tambah Tugas')
                )
              ],
            ),
          )
      ),
    );
  }
}
