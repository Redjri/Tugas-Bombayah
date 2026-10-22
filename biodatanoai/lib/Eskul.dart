import 'package:biodatanoai/FormPage.dart';
import 'package:biodatanoai/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class eskul extends StatelessWidget {
  const eskul({super.key});

  @override
  Widget build(BuildContext context) {
    final noaicontroller c = Get.put(noaicontroller());

    return Scaffold(
      appBar: AppBar(
        title: Text('ListPage'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Get.toNamed('/form',
                  arguments:
                    {'ekstra': 'Pramuka'}
                );
              },
              child: Text('Pramuka')
          ),
          ElevatedButton(
              onPressed: () {
                Get.toNamed('/form',
                    arguments:
                    {'ekstra': 'Marching Band'}
                );
              },
              child: Text('Marching Band')
          ),
          ElevatedButton(
              onPressed: () {
                Get.toNamed('/form',
                    arguments:
                    {'ekstra': 'Badminton'}
                );
              },
              child: Text('Badminton')
          )
        ],
      ),
    );
  }
}
