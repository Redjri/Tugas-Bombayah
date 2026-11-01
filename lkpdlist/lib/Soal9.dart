import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:lkpdlist/ControllerMap.dart';

class nilrat extends StatelessWidget {
  const nilrat({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(controllermap());
    return Scaffold(
      appBar: AppBar(
        title: Text('Nilai Rata rata'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(
                () => ListView.builder(
                    shrinkWrap: true,
                    itemCount: c.grades.length,
                    itemBuilder: (context, i) {
                      final e = c.grades.entries.elementAt(i);
                      return ListTile(
                        title: Text(e.key),
                        subtitle: Text('Nilai: ${e.value.toString()}'),
                      );
                    }
                )
            ),
            Text('Nilai Rata-Rata adalah: ${c.averageGrade.toStringAsFixed(2)}')
          ],
        ),
      ),
    );
  }
}
