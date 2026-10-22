import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: lat1(),
  ));
}

class lat1 extends StatelessWidget {
  const lat1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan 1"),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 250, 245, 241)
        ),
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 250, 248, 246),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 150,
                      height: 250,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 176, 163, 153),
                      ),
                      child: Image.network(
                        'https://asset.kompas.com/crops/rvikSCXzMWQtG7uvjbUjf3P9-r0=/0x0:1200x800/1200x800/data/photo/2019/11/27/5dde0c057278b.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                        child: Container(
                          height: 250,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 206, 202, 194)
                          ),
                          padding: EdgeInsets.only(left: 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ahmad Fajri",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "The best supporter developer for rucky ;p",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                        )
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "AHMAD FAJRIIII!!!!!!",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                       SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            "June 10 2009",
                            style: TextStyle(
                                fontSize: 11,
                                color: Colors.grey
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              "Lorem ipsum dolor sit amet, sunt non dolore in labore. Ut dolore ea ad ut velit sunt exercitation deserunt anim qui dolore eu. Nisi ut ullamco proident magna magna officia magna. Deserunt aute tempor esse sed laboris nisi labore ut adipiscing adipiscing non. Dolor anim tempor voluptate in labore enim reprehenderit et.",
                              style: TextStyle(fontSize: 12),
                            ),
                          )
                        ],
                      ),

                      SizedBox(height: 30),

                      ElevatedButton(
                        onPressed: () {
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:Color(0xFF7A5E53),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                          elevation: 0,
                        ),
                        child: Text(
                          "Read More",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),

                      SizedBox(height: 10),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}