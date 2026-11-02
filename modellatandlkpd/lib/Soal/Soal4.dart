import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modellatandlkpd/Controller/ControllerSoal.dart';

class hapmod extends StatelessWidget {
  const hapmod({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(soalController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Soal 4'),
      ),
      body: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Obx(
                    () => ListView.builder(
                        shrinkWrap: true,
                        itemCount: c.cartItems.length,
                        itemBuilder: (context, i) {
                          final p = c.cartItems[i];
                          return ListTile(
                            title: Text(p.id),
                            subtitle: Text(p.name),
                            trailing: IconButton(
                                onPressed: () => c.removeItem(p.id),
                                icon: Icon(Icons.remove)
                            ),
                          );
                        }
                    )
                )
              ],
            ),
          )
      ),
    );
  }
}
