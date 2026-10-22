import 'package:flutter/material.dart';
import 'package:kejuruan/menuUtama.dart';

class halText extends StatelessWidget {
  const halText({super.key});

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
      body: Text(
        "Hello World",
        style: TextStyle(
          color: Colors.green,
          fontWeight: FontWeight.bold,
          fontSize: 50
        ),
      ),
    );
  }
}
