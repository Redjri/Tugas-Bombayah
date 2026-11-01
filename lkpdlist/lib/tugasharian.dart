import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:lkpdlist/Controller.dart';

class todolist extends StatelessWidget {
  const todolist({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(controller());
    return Scaffold(
      appBar: AppBar(
        title: Obx(
              () => Text('Tugas belum selesai: ${c.belumselesai.length}'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: c.tugasfield,
            ),
            ElevatedButton(
                onPressed: c.tambahtugas,
                child: Text('Tambah'
                )
            ),
            SizedBox(height: 50),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Tugas yang belum selesai'),
                      Obx(
                          () => ListView.builder(
                              shrinkWrap: true,
                              itemCount: c.belumselesai.length,
                              itemBuilder: (context, i) => ListTile(
                                title: Text(c.belumselesai[i]),
                                onTap: () => c.tandaiselesai(c.belumselesai[i]),
                              )
                          )
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Tugas yang sudah selesai'),
                      Obx(
                          () => ListView.builder(
                            shrinkWrap: true,
                            itemCount: c.selesai.length,
                            itemBuilder: (context, i) => ListTile(
                              title: Text(c.selesai[i]),
                              onTap: () => c.hapus1(c.selesai[i]),
                            )
                          )
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
