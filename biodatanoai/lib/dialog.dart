import 'package:biodatanoai/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class dialog extends StatelessWidget {
  const dialog({super.key});

  @override
  Widget build(BuildContext context) {
    final noaicontroller c = Get.put(noaicontroller());

    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: c.dialog,
            child: Text('Hapus')
        ),
      ),
    );
  }
}
