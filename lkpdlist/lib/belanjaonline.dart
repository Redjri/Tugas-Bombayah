import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lkpdlist/Controller.dart';

class belanjonline extends StatelessWidget {
  const belanjonline({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(controller());
    return Scaffold(
      appBar: AppBar(
        title: Text('Belanja Online'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center ,
              children: [
                ElevatedButton(
                    onPressed: () => c.beli(15000),
                    child: Text('Kopi Rp15.000')
                ),
                ElevatedButton(
                    onPressed: () => c.beli(10000),
                    child: Text('Teh Rp10.000')
                ),
                ElevatedButton(
                    onPressed: () => c.beli(20000),
                    child: Text('Susu Rp20.000')
                ),
              ],
            ),
            SizedBox(height: 100),
            Text(
                'Keranjang',
              style: TextStyle(
              fontSize: 30
            ),
            ),
            Obx(
                () => ListView.builder(
                    shrinkWrap: true,
                    itemCount: c.keranjang.length,
                    itemBuilder: (context, i) => ListTile(
                      title: Text(c.keranjang[i].toString()),
                      leading: CircleAvatar(
                        child: Text('${i+1}'),
                      ),
                    ),
                )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 30,
              children: [
                Obx(
                    () => Text('Total Item: ${c.jumlahItem}')
                ),
                Obx(
                        () => Text('Total Harga: ${c.total}')
                ),
              ],
            ),
            ElevatedButton(
                onPressed: c.kosongkan,
                child: Text('Kosongkan Keranjang')
            )
          ],
        ),
      ),
    );
  }
}
