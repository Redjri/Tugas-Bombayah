import 'package:flutter/material.dart';
import 'package:tugas_buku/Text5.dart';
import 'package:tugas_buku/Text6.dart';
import 'package:tugas_buku/icon.dart';
import 'package:tugas_buku/pading.dart';

class row extends StatelessWidget {
  const row({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        pading(),
        text5(),
        SizedBox(width: MediaQuery.sizeOf(context). width * 0.6),
        icon(),
        text6()
      ],
    );
  }
}
