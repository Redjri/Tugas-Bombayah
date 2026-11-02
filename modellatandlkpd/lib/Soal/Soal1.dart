import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modellatandlkpd/Controller/ControllerSoal.dart';

class modlis extends StatelessWidget {
  const modlis({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(soalController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Soal 1'),
      ),
      body: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Obx(
                    () => ListView.builder(
                        shrinkWrap: true,
                        itemCount: c.recipes.length,
                        itemBuilder: (context, i) {
                          final p = c.recipes[i];
                          return Card(
                            child: Column(
                              children: [
                                Text(p.name),
                                Text(p.category)
                              ],
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
