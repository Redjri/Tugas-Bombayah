import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:listdanpeta/Controller.dart';

class peta extends StatelessWidget {
  const peta({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(Controller());
    final entries = c.stok.entries.toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('Tampil data Map'),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: c.stok.length,
        itemBuilder: (context, i) {
          final e = c.stok.entries.elementAt (i);
          return ListTile(
          title: Text(e.key),
          trailing: Text('${e.value}'),
          );
        }
      ),
    );
  }
}
