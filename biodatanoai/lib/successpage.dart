import 'package:biodatanoai/Menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class success extends StatelessWidget {
  const success({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Sukses!',
            style: TextStyle(
              fontSize: 30
            ),),
            ElevatedButton(
                onPressed: (){
                  Get.to(HomePage());
                },
                child: Text('Kembali'))
          ],
        ),
      ),
    );
  }
}
