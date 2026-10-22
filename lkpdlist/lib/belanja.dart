import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:lkpdlist/Controller.dart';

class belanja extends StatelessWidget {
  const belanja({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(controller());
    return Scaffold(
      appBar: AppBar(
        title: Text('Belanja'),
      ),
      body: Column(
        children: [
          TextField(
            controller: c.tkb,
          ),

          ElevatedButton(
              onPressed: c.tambah,
              child: Text('Tambah')
          ),
          Obx(() => ListView.builder(
            shrinkWrap: true,
            itemCount: c.daftar.length,
            itemBuilder: (context, i) => ListTile(
              title: Text(c.daftar[i]),
            )
          ))
        ],
      ),
    );
  }
}
