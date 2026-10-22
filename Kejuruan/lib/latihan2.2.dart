import 'package:flutter/material.dart';

void main() {
  runApp(lat2());
}

class lat2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFC7CAE1),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: Color(0xFF0F267A),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.arrow_back_ios, color: Colors.white),
                        Icon(Icons.outlined_flag, color: Colors.white),
                      ],
                    ),
                  ),

                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 10),
                    child: Image.network(
                      'https://asset.kompas.com/crops/rvikSCXzMWQtG7uvjbUjf3P9-r0=/0x0:1200x800/1200x800/data/photo/2019/11/27/5dde0c057278b.jpg',
                      height: 200,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Learn UI/UX Design",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Row(
                          children: [
                            Text("By RPI  "),
                            Icon(Icons.timer, size: 15),
                            Text(" 20 minute ago"),
                          ],
                        ),
                      ),
                    ],
                  ),

                  Container(
                    width: 75,
                    height: 35,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 40,
                          child: Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Color(0xFFC7CAE1), width: 2),
                              image: DecorationImage(
                                image: NetworkImage('https://i.pravatar.cc/150?img=12'),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20,
                          child: Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Color(0xFFC7CAE1), width: 2),
                              image: DecorationImage(
                                image: NetworkImage('https://i.pravatar.cc/150?img=47'),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          child: Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Color(0xFFC7CAE1), width: 2),
                              image: DecorationImage(
                                image: NetworkImage('https://i.pravatar.cc/150?img=11'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                textAlign: TextAlign.justify,
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 30, bottom: 40, left: 60, right: 60),
              height: 45,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFFA000),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  "Read More",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}