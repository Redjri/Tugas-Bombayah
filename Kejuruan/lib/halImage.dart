import 'package:flutter/material.dart';
import 'package:kejuruan/menuUtama.dart';

class halImg extends StatelessWidget {
  const halImg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Image", style: TextStyle(color: Colors.grey[100]),),
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => menuUtama()),
          );
        }, icon:  Icon(Icons.arrow_back_ios))
      ),
      body: Image.network(
          'https://asset.kompas.com/crops/rvikSCXzMWQtG7uvjbUjf3P9-r0=/0x0:1200x800/1200x800/data/photo/2019/11/27/5dde0c057278b.jpg',
          width: 200,
          height: 300,
          fit: BoxFit.cover,
      ),
    );
  }
}
