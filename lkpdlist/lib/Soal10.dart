import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lkpdlist/ControllerMap.dart';

class batad extends StatelessWidget {
  const batad({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(controllermap());
    return Scaffold(
      appBar: AppBar(
        title: Text('Copy and update'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(
                () => ListView.builder(
                    shrinkWrap: true,
                    itemCount: c.emergencyContacts.length,
                    itemBuilder: (context, i) {
                      final e = c.emergencyContacts.entries.elementAt(i);
                      return ListTile(
                        title: Text(e.key),
                        subtitle: Text(e.value),
                      );
                    }
                )
            ),
            ElevatedButton(
                onPressed: () => c.importContacts({"K03" :"Andi", "K04" : "Dewi"}),
                child: Text('Import Kontak Google')
            )
          ],
        ),
      ),
    );
  }
}
