import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement/soal_1.dart';
import 'package:statemanagement/soal_10.dart';
import 'package:statemanagement/soal_2.dart';
import 'package:statemanagement/soal_3.dart';
import 'package:statemanagement/soal_4.dart';
import 'package:statemanagement/soal_5.dart';
import 'package:statemanagement/soal_6.dart';
import 'package:statemanagement/soal_7.dart';
import 'package:statemanagement/soal_8.dart';
import 'package:statemanagement/soal_9.dart';

class lat3 extends StatelessWidget {
  const lat3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kumpulan Soal"),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            Get.to(soal1());
          }, child: Text("Soal 1")),

          ElevatedButton(onPressed: (){
            Get.to(soal2());
          }, child: Text("Soal 2")),

          ElevatedButton(onPressed: (){
            Get.to(soal3());
          }, child: Text("Soal 3")),

          ElevatedButton(onPressed: (){
            Get.to(soal4());
          }, child: Text("Soal 4")),

          ElevatedButton(onPressed: (){
            Get.to(soal5());
          }, child: Text("Soal 5")),

          ElevatedButton(onPressed: (){
            Get.to(soal6());
          }, child: Text("Soal 6")),

          ElevatedButton(onPressed: (){
            Get.to(soal7());
          }, child: Text("Soal 7")),

          ElevatedButton(onPressed: (){
            Get.to(soal8());
          }, child: Text("Soal 8")),

          ElevatedButton(onPressed: (){
            Get.to(soal9());
          }, child: Text("Soal 9")),

          ElevatedButton(onPressed: (){
            Get.to(soal10());
          }, child: Text("Soal 10")),
        ],
      ),
    );
  }
}
