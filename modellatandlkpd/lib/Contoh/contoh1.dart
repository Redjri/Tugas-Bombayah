import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modellatandlkpd/Controller/contohController.dart';

class cont1 extends StatelessWidget {
  const cont1({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(contohController());
    return Scaffold(
      appBar: AppBar(
        title: Text('InputProduk'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: c.teNamaProduk,
              decoration: InputDecoration(
                labelText: "Nama Produk",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: c.teHarga,
              decoration: InputDecoration(
                labelText: "Harga Produk",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () => c.tambah(),
                child: Text('Tambah Produk', style: TextStyle(color: Colors.white))
            ),
            Obx(
                () => ListView.builder(
                    shrinkWrap: true,
                    itemCount: c.produklist.length,
                    itemBuilder: (_, i) {
                      final p = c.produklist[i];
                      return ListTile(
                        title: Text(p.nama),
                        subtitle: Text('Rp ${p.harga}'),
                        trailing: IconButton(
                            onPressed: () => c.hapus(p.id),
                            icon: Icon(Icons.delete)
                        ),
                      );
                    }
                )
            )
          ],
        ),
      ),
    );
  }
}
