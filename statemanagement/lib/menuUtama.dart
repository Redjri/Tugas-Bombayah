import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement/Homepage.dart';
import 'package:statemanagement/Latihan_1.dart';
import 'package:statemanagement/Latihan_2.dart';
import 'package:statemanagement/Latihan_3.dart';
import 'package:statemanagement/Snakbar.dart';
import 'package:statemanagement/botsheet.dart';
import 'package:statemanagement/dialog.dart';

class Kenu extends StatelessWidget {
  const Kenu({super.key});

  @override
  Widget build(BuildContext context) {
    final bar = Get.put(snakbarctrl());
    final alog = Get.put(dialog());
    final bot = Get.put(botsheet());
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            Get.to(Latihan_1());
          }, child: Text("Latihan 1")),
          ElevatedButton(onPressed: (){
            Get.to(Lat_2());
          }, child: Text("Latihan 2")),
          ElevatedButton(onPressed: (){
            Get.to(lat3());
          }, child: Text("Latihan 3")),
          ElevatedButton(onPressed: (){
            bar.bar();
          }, child: Text("SnackBar")),
          ElevatedButton(onPressed: (){
            alog.alog();
          }, child: Text("Dialog")),
          ElevatedButton(onPressed: (){
            bot.bot();
          }, child: Text("Bottom Sheets")),
          ElevatedButton(onPressed: (){
            Get.to(HomePage());
          },
              child: Text("Toko Online")
          )
        ],
      ),
    );
  }
}
