import 'package:flutter/material.dart';

List<String> buah = [
  'Apel', 'mangga', 'Jeruk'
];

class HalamanPrint extends StatefulWidget {
  const HalamanPrint({super.key});

  @override
  State<HalamanPrint> createState() => _HalamanPrintState();
}

class _HalamanPrintState extends State<HalamanPrint> {
  final List<String> buah = ['Apel', 'mangga', 'Jeruk'];

  @override
  void initState() {
    super.initState();
    // print() akan tereksekusi di konsol begitu halaman ini dibuka
    print('Halaman dibuka! Buah pertama: ${buah[0]}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Print Data'),
      ),
      body: Center(
        child: Text(
          'Cek Debug Console Android Studio!\nBuah: ${buah[0]}',
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
