import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:listdanpeta/Controller.dart';

class ListListView extends StatelessWidget {
  const ListListView({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(Controller());
    return Scaffold(
      appBar: AppBar(
        title: Text('List dan ListView'),
      ),
      body: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: c.buah.length,
            itemBuilder: (context, i) {
              return ListTile(
                leading: Text((i+1). toString()),
                title: Text(c.buah[i]),
              );
            },
          )
        ],
      ),
    );
  }
}
