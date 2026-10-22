import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tugas_buku/Text2.dart';
import 'package:tugas_buku/Text3.dart';
import 'package:tugas_buku/Text4.dart';
import 'package:tugas_buku/divide.dart';
import 'package:tugas_buku/row.dart';

class text1 extends StatelessWidget {
  const text1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context). width * 0.99,
      height: MediaQuery.sizeOf(context). height * 0.712,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          text2(),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
          text3(),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
          text4(),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.371),
          divide(),
          row()
        ],
      ),
    );
  }
}
