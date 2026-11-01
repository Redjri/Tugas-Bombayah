import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lkpdlist/Controller.dart';

class absen extends StatelessWidget {
  const absen({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(controller());
    return Scaffold(
      appBar: AppBar(
        title: Text('Absensi'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(
                  () => ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: c.nsiswa.length,
                itemBuilder: (context, i) {
                  final e = c.nsiswa.entries.elementAt(i);
                  return ListTile(
                    title: Text(e.key),
                    subtitle: Text('${e.value}'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {
                            c.hapus(e.key);
                          },
                          icon: Icon(Icons.delete),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}