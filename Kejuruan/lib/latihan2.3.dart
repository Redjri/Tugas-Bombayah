import 'package:flutter/material.dart';

void main() {
  runApp(lat3());
}

class lat3 extends StatelessWidget {
  const lat3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: 420,
                  height: 300,
                  margin: EdgeInsets.only(left: 28, top: 40),
                  child: Image.network(
                    'https://asset.kompas.com/crops/rvikSCXzMWQtG7uvjbUjf3P9-r0=/0x0:1200x800/1200x800/data/photo/2019/11/27/5dde0c057278b.jpg',
                    height: 200,
                  ),
                ),
                Positioned(
                    child: Container(
                      width: 150,
                      height: 60,
                      margin: EdgeInsets.only(left: 15, top: 40, right: 100),
                      padding: EdgeInsets.only(top: 5),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(color: Colors.red, width: 2),
                        borderRadius: BorderRadius.circular(10)
                      ), child:
                    Text("30%",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                     textAlign: TextAlign.center
                    )
                      ,
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
