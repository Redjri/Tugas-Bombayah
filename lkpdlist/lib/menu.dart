import 'package:flutter/material.dart';
import 'package:get/get.dart';

class menu extends StatelessWidget {
  const menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LIST DAN MAP'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Get.toNamed('/belanja');
              },
              child: Text('Soal 1: Daftar Belanja')
          ),

        ],
      ),
    );
  }
}
