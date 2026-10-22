import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement/searchController.dart';

class Lat_2 extends StatelessWidget {
  const Lat_2({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Searchcontroller());
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Field"),
      ),
      body: Column(
        children: [
          TextField(
            controller: controller.textController,
            onChanged: controller.onSearchChanged,
            decoration: InputDecoration(
                hint: Text("Cari...")
            ),
          ),
          Obx(() => Text(
              'mencari: ${controller.searchText.value}'
          ))
        ],
      ),
    );
  }
}
