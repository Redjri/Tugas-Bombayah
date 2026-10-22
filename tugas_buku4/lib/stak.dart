import 'package:flutter/cupertino.dart';

class stak extends StatelessWidget {
  const stak({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage('https://akcdn.detik.net.id/customthumb/2015/07/27/1279/070248_inet1.jpg?w=700&q=90'),
            ),
          ),
        ),
      ],
    );
  }
}
