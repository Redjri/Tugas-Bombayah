import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lkpdlist/ControllerMap.dart';

class kelnil extends StatelessWidget {
  const kelnil({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(controllermap());
    return Scaffold(
      appBar: AppBar(
        title: Text('Nilai Keseluruhan'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(
                () => ListView.builder(
                    shrinkWrap: true,
                    itemCount: c.itemPrices.length,
                    itemBuilder: (context, i) {
                      final e = c.itemPrices.entries.elementAt(i);
                      return ListTile(
                        title: Text(e.key),
                        subtitle: Text('Harga: ${e.value.toString()}'),
                      );
                    }
                )
            ),
            Text('Total Bayar: RP ${c.totalPrice}', style: TextStyle(fontSize: 15),)
          ],
        ),
      ),
    );
  }
}
