import 'package:flutter/material.dart';
import 'package:kejuruan/Latihan3.dart';
import 'package:kejuruan/halContainer.dart';
import 'package:kejuruan/halImage.dart';
import 'package:kejuruan/halRow.dart';
import 'package:kejuruan/halText.dart';
import 'package:kejuruan/latihan2.1.dart';
import 'package:kejuruan/latihan2.2.dart';
import 'package:kejuruan/latihan2.3.dart';
import 'package:kejuruan/latihan_stack.dart';

class menuUtama extends StatelessWidget {
  const menuUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu Utama"),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => halContainer()),
            );
          }, child: Text("Container")),

          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => halRow()),
            );
          }, child: Text("Halaman Row/Column")),

          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => halText()),
            );
          }, child: Text("Halaman Text")),

          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => halImg()),
            );
          }, child: Text("Halaman Image")),

          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => staking()),
            );
          }, child: Text("Halaman Stacking")),

          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => lat1()),
            );
          }, child: Text("Halaman latihan 2.1")),

          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => lat2()),
            );
          }, child: Text("Halaman latihan 2.2")),

          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => lat3()),
            );
          }, child: Text("Halaman latihan 2.3")),

          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => LATIHAN3()),
            );
          }, child: Text("Halaman Latihan 3")),
        ],
      ),
    );
  }
}
