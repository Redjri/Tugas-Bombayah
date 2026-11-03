import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:modellatandlkpd/Controller/ControllerSoal.dart';

class kalkulatorestoran extends StatelessWidget {
  const kalkulatorestoran({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(soalController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Soal 6'),
      ),
      body: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Obx(
                    () => ListView.builder(
                        shrinkWrap: true,
                        itemCount: c.orderList.length,
                        itemBuilder: (context, i) {
                          final p = c.orderList[i];
                          return ListTile(
                            leading: CircleAvatar(
                              child: Text(
                                '${i+1}'
                              ),
                            ),
                            title: Text(p.title),
                            subtitle: Text('Rp ${p.price.toString()}'),
                            trailing: Text('Qty: ${p.qty.toString()}'),
                          );
                        }
                    )
                ),
                Obx(
                    () => Text(
                     "Total: Rp ${c.grandTotal}"
                    )
                )
              ],
            ),
          )
      ),
    );
  }
}
