import 'package:flutter/material.dart';
// import 'package:test1/menuUtama.dart';

class tesaja extends StatelessWidget {
  const tesaja({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: MediaQuery.sizeOf(context).width * 1,
          height: MediaQuery.sizeOf(context). height * 1,
          color: Color.fromARGB(255, 195, 195, 195),
          child: Container(
            color: Colors.red,
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.29,
                        height: MediaQuery.sizeOf(context). height * 0.29,
                        color: Color.fromARGB(255, 178, 178, 178),
                        alignment: Alignment.center,
                        child: Container(
                          width: MediaQuery.sizeOf(context). width * 0.25,
                          height: MediaQuery.sizeOf(context). height * 1,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyiE6KiKpvt3THZpK9DiyvHfbu72_jOQ4XM_SMHVEKBA&s=10'),
                                  fit: BoxFit.fill
                              )
                          ),
                        ),
                      ),
                      Container(
                          width: MediaQuery.sizeOf(context). width * 0.6262,
                          height: MediaQuery.sizeOf(context). height * 0.29,
                          color: Color.fromARGB(255, 58, 58, 58),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Jocey Karlan",
                                  style: TextStyle(
                                      color: Colors.white,
                                    fontSize: 15
                                  ),
                                ),
                                Text("Product Management",
                                  style: TextStyle(
                                      color: Colors.grey,
                                    fontSize: 12
                                  ),
                                )
                              ]
                          )
                      )
                    ]
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 1,
                  height: MediaQuery.sizeOf(context). height * 0.663,
                  color: Color.fromARGB(255, 200, 200, 200),
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 30, left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Asana Voices : Meet Jocey Karlan as a Product Manager....",
                              style:TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
                            Text(
                              "August 19, 2025",
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
                            Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since 1966, when designers at Letraset and James Mosley, the librarian at St Bride Printing Library in London, took a 1914 Cicero translation and scrambled it to make dummy text for Letraset's Body Type sheets.",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: MediaQuery.sizeOf(context).height * 0.291),
                      Divider(
                        color: Colors.black,
                        thickness: 0.5,
                        height: 3,
                      ),
                      Row(
                        children: [
                          Padding(padding: EdgeInsetsGeometry.only(top: 55, left: 15)),
                          Text('Cultur',
                            style: TextStyle(
                              fontSize: 12
                            ),
                          ),
                          SizedBox(width: MediaQuery.sizeOf(context).width * 0.57),
                          Icon(
                            Icons.chat,
                            size: 23,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "0 0 Share", style: TextStyle(
                              fontSize: 12
                          ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
