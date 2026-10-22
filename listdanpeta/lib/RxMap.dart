import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:listdanpeta/Controller.dart';

class Rxm extends StatelessWidget {
  const Rxm({super.key});

  @override
  Widget build(BuildContext context) {
    final s = Get.put(Controller());
    return Scaffold(
      appBar: AppBar(
        title: Text('RXMAP'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(
                () => ListView.builder(

                  shrinkWrap: true,
                  itemCount: s.stock.length,
                  itemBuilder: (context, i) {
                    final e = s.stock.entries.elementAt(i);
                    return ListTile(
                      title: Text(e.key),
                      subtitle: Text('${e.value}'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(onPressed: () {
                            s.ubah(e.key);
                          }, icon: Icon(Icons.edit)),
                          IconButton(onPressed: () {
                            s.hapus(e.key);
                          }, icon: Icon(Icons.delete))
                        ],
                      ),
                    );
                  },
                )
            ),
          ],
        ),
      ),
    );
  }
}
