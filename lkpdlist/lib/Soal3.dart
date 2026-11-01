import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lkpdlist/ControllerMap.dart';

class datke extends StatelessWidget {
  const datke({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(controllermap());
    return Scaffold(
      appBar: AppBar(
        title: Text('Ubah Data'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(
                () => ListView.builder(
                  shrinkWrap: true,
                  itemCount: c.stockmap.length,
                  itemBuilder: (context, i) {
                    final e = c.stockmap.entries.elementAt(i);
                    return ListTile(
                      title: Text('Nama Produk: ${e.value}'),
                      subtitle: Text('Kuantitas: ${e.key}'),
                    );
                  }
                )
            ),
            Text('Control Panel'),
            TextField(
              controller: c.tecc,
            ),
            ElevatedButton(
                onPressed: () => c.stokupdate("B001"),
                child: Text('Ubah')
            )
          ],
        ),
      ),
    );
  }
}
