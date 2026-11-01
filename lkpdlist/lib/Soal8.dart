import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lkpdlist/ControllerMap.dart';

class filter extends StatelessWidget {
  const filter({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(controllermap());
    return Scaffold(
      appBar: AppBar(
        title: Text('Reset Filter'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
                () => Wrap(
                  spacing: 10,
                  children: c.activeFilter.entries.map((entry) {
                    return Chip(
                      label: Text('${entry.key}: ${entry.value}'),
                    );
                  }).toList()
                )
            ),
            TextButton(
                onPressed: c.resetFilters,
                child: Text('Reset All Filter'))
          ],
        ),
      ),
    );
  }
}
