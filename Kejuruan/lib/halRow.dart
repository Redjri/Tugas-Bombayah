import 'package:flutter/material.dart';
import 'package:kejuruan/menuUtama.dart';

class halRow extends StatelessWidget {
  const halRow({super.key});

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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "HELOO WORLD,",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey[800],
                  fontWeight: FontWeight.bold,
                ),//
              ),//
              Text(
              "apa kabar dunia tipu tipu",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.yellow[800],
                    fontWeight: FontWeight.bold,
                ),
              )

            ],
          ),//
          SizedBox(width: 30),
          Icon(Icons.adb_rounded, color: Colors.green[800], size:90),
        ]
      )
    );
  }
}
