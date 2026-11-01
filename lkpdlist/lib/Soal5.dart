import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lkpdlist/ControllerMap.dart';

class absnsis extends StatelessWidget {
  const absnsis({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(controllermap());
    return Scaffold(
      appBar: AppBar(
        title: Text('Absensi siswa'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(
                () => ListView.builder(
                  shrinkWrap: true,
                  itemCount: c.attendance.length,
                  itemBuilder: (context, i) {
                    final e = c.attendance.entries.elementAt(i);
                    return ListTile(
                      title: Text(e.value),
                      subtitle: Text(e.key),
                    );
                  },
                )
            ),
            Text(
              'Siswa Hadir: ${c.totalHadir}'
            )
          ],
        ),
      ),
    );
  }
}
