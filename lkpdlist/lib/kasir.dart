import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lkpdlist/Controller.dart';

class AntrianKasir extends StatelessWidget {
  const AntrianKasir({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(controller());
    return Scaffold(
      appBar: AppBar(
        title: Text('Antrian Kasir'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(
                () => Text('Antrian ke-${c.display}', style: TextStyle(
                  fontSize: 25
                ),)
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: c.tambantrian,
                    child: Text('Ambil Antrian')
                ),
                ElevatedButton(
                    onPressed: c.panggil,
                    child: Text('Panggil')
                ),
                ElevatedButton(
                    onPressed: c.remove,
                    child: Text('Reset')
                ),
              ],
            ),
            Text('Antrian'),
            Obx(
                    () => ListView.builder(
                    shrinkWrap: true,
                    itemCount: c.antrian.length,
                    itemBuilder: (context, i) => ListTile(
                      title: Text(c.antrian[i].toString()),
                    )
                )
            )
          ],
        ),
      ),
    );
  }
}
