import 'package:flutter/material.dart';
import 'package:kejuruan/menuUtama.dart';

void main() {
  runApp(const LATIHAN3());
}

class LATIHAN3 extends StatelessWidget {
  const LATIHAN3({super.key});

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
        body: SingleChildScrollView(
          child:
          Column(
            children: [
              Center(
                child:
                Container(
                  width: 400,
                  height: 400,
                  margin: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 3),
                    borderRadius: BorderRadius.circular(10),
                  ), child:
                  Stack(
                    children: [
                      Positioned(child:
                          Container(
                            width: 400,
                            height: 250,
                            decoration: BoxDecoration(
                              color: Colors.white
                            ),
                          )
                      ),
                      Positioned(child: Container(
                        width: 380,
                        height: 230,
                        margin: EdgeInsets.only(left: 3, top: 10), child: Image.network(
                        'https://asset.kompas.com/crops/rvikSCXzMWQtG7uvjbUjf3P9-r0=/0x0:1200x800/1200x800/data/photo/2019/11/27/5dde0c057278b.jpg',
                      )
                      )
                      ),
                      Positioned(child: Container(
                        width: 100,
                        height: 45,
                        padding: EdgeInsets.only(top: 3),
                        margin: EdgeInsets.only(left: 10, top: 10),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10)
                        ), child: Text("-30%", textAlign: TextAlign.center, style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24
                      ),),
                      )
                      ),
                      Container(
                        width: 350,
                        height: 50,
                        margin: EdgeInsets.only(top: 250, left: 20),child: Text("Sepatu lari UltraRun", style: TextStyle(
                          color: Colors.black,
                          fontSize: 24
                      ),
                      ),
                      ),
                      Container(
                        width: 350,
                        height: 50,
                        margin: EdgeInsets.only(top: 290, left: 20),child: Stack(
                        children: [
                          Text("Rp 350.000", style: TextStyle(
                              color: Colors.grey,
                              fontSize: 19
                          ),
                          ),
                          Positioned(child: Container(
                            width: 120,
                            height: 5,
                            margin: EdgeInsets.only(top: 12),
                            decoration: BoxDecoration(
                              color: Colors.red
                            ),
                          ))
                        ],
                      )
                      ),
                      Container(
                        width: 350,
                        height: 50,
                        margin: EdgeInsets.only(top: 320, left: 20),child: Text("Rp 245.000", style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                      ),
                      ),
                      )
                    ],
                  ),
                ),
              ),
              // latihan 2
              Center(
                child: Container(
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.only(top: 100),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blue, width: 3)
                  ), child: Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,
                  children: [
                    Icon(
                      Icons.chat,
                      size: 70,
                      color: Colors.blue,
                    ),
                    Positioned(top: 0, right: -4, child: Container(
                      width: 35,
                      height: 35,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ), child: Text("9+", textAlign: TextAlign.center,style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),),
                    ))
                  ],
                ),
                ),
                ),
              // latihan 3
              Center(
                child: Container(
                  width: 450,
                  height: 200,
                  margin: EdgeInsets.only(top: 100, bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5)
                  ), child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 150,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                      ), child: Icon(
                      Icons.play_arrow,
                      size: 80,
                      color: Colors.blueAccent,
                    ),
                    ),
                    Positioned(bottom: 0, right: 15,  child: Container(
                      width: 65,
                      height: 25,
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.indigo
                      ), child: Text("12:45", textAlign: TextAlign.center, style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),),
                    ))
                  ],
                ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
