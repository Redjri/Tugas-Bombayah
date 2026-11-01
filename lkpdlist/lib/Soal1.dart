import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lkpdlist/ControllerMap.dart';

class vimap extends StatelessWidget {
  const vimap({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(controllermap());
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Map ke List UI'),
      ),
      body: SingleChildScrollView(
        child: Obx(
            () => ListView.builder(
                shrinkWrap: true,
                itemCount: c.categories.length,
                itemBuilder: (context, i) {
                  var entry = c.categories.entries.toList()[i];
                  return ListTile(
                    title: Text(entry.value),
                    subtitle: Text('Kode ${entry.key}'),
                    leading: CircleAvatar(
                      child: Text('${i+1}'),
                    ),
                  );
                }
        )
        ),
      ),
    );
  }
}
