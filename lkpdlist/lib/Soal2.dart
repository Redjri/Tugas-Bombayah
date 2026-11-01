import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lkpdlist/ControllerMap.dart';

class manakeja extends StatelessWidget {
  const manakeja({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(controllermap());
    return Scaffold(
      appBar: AppBar(
        title: Text('Manajemen Keranjang Belanja'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Input ID'),
            TextField(
              controller: c.tecid,
            ),
            Text('Input Nama'),
            TextField(
              controller: c.tecname,
            ),
            ElevatedButton(
                onPressed: c.addItem,
                child: Text('Tambah')
            ),
            SizedBox(height: 10),
            Text('Daftar Produk'),
            Obx(
                () => ListView.builder(
                  shrinkWrap: true,
                  itemCount: c.cart.length,
                  itemBuilder: (context, i) {
                    final e= c.cart.entries.elementAt(i);
                    return ListTile(
                      title: Text('Nama Produk: ${e.value}'),
                      subtitle: Text('ID Produk: ${e.key}'),
                    );
                  },
                )
            )
          ],
        ),
      ),
    );
  }
}
