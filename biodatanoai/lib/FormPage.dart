import 'package:biodatanoai/Menu.dart';
import 'package:biodatanoai/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class form extends StatelessWidget {
  const form({super.key});

  @override
  Widget build(BuildContext context) {
    final es = Get.arguments['ekstra'];
    final noaicontroller c = Get.put(noaicontroller());


    return Scaffold(
      body: Column(
        children: [
          Text('$es',
          style: TextStyle(
            fontSize: 30
          ),),
          TextField(
            controller: c.name,
            onChanged: (value) => c.nama.value = value,
            decoration: InputDecoration(labelText: 'Nama'),
          ),
          ElevatedButton(
              onPressed: () {
                c.formulir(es);
              },
              child: Text('Daftar')
          )
        ],
      ),
    );
  }
}
