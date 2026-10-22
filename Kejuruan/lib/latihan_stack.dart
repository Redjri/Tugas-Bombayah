import 'package:flutter/material.dart';
import 'package:kejuruan/menuUtama.dart';

void main() {
  runApp(const staking());
}

class staking extends StatelessWidget {
  const staking({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text("Halaman Image", style: TextStyle(color: Colors.grey[100]),),
            leading: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => menuUtama()),
              );
            }, icon:  Icon(Icons.arrow_back_ios))
        ),
        body: Container(
          width: 500,
          height: 1000,
          decoration: BoxDecoration(
            color: Colors.blue
          ), child: Stack(
          children: [
            Container(
              width: 80,
              height: 80,
              margin: EdgeInsets.only(top: 50, left: 25),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle
              ),
            ),
            Positioned(child: Container(
              width: 80,
              height: 80,
              margin: EdgeInsets.only(top: 50, left: 60),
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  shape: BoxShape.circle
              ),
            )
            ),
            Positioned(child: Container(
              width: 80,
              height: 80,
              margin: EdgeInsets.only(top: 50, left: 95),
              decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle
              ),
            )
            ),
          ],
        ),
        ),
      ),
    );
  }
}
