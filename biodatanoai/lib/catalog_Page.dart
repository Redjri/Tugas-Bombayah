import 'package:flutter/material.dart';
import 'package:get/get.dart';

class catalog extends StatelessWidget {
  const catalog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog'),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            Get.back();
          }, child: Text('Kembali'))
        ],
      ),
    );
  }
}
