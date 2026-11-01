import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:lkpdlist/ControllerMap.dart';

class hpsdt extends StatelessWidget {
  const hpsdt({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(controllermap());
    return Scaffold(
      appBar: AppBar(
        title: Text('Hapus Data'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(
                    () => ListView.builder(
                    shrinkWrap: true,
                    itemCount: c.bookmarks.length,
                    itemBuilder: (context, i) {
                      final e = c.bookmarks.entries.elementAt(i);
                      return ListTile(
                        title: Text('Nama Produk: ${e.value}'),
                        subtitle: Text('Kuantitas: ${e.key}'),
                        trailing: IconButton(
                            onPressed: () => c.removeBookmark(e.key),
                            icon: Icon(Icons.delete)
                        )
                      );
                    }
                )
            ),
          ],
        ),
      ),
    );
  }
}
