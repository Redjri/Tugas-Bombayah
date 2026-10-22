import 'package:flutter/material.dart';
// import 'package:test1/menuUtama.dart';

class tesaja extends StatelessWidget {
  const tesaja({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.blue,
          child: Container(
            color: Colors.indigo,
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(

                        height: 200,
                        color: Colors.red,
                        alignment: Alignment.center,
                        child: Container(

                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyiE6KiKpvt3THZpK9DiyvHfbu72_jOQ4XM_SMHVEKBA&s=10')
                              )
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(

                        height: 200,
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
