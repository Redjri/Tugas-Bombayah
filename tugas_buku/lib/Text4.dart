import 'package:flutter/material.dart';

class text4 extends StatelessWidget {
  const text4({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since 1966, when designers at Letraset and James Mosley, the librarian at St Bride Printing Library in London, took a 1914 Cicero translation and scrambled it to make dummy text for Letraset's Body Type sheets.",
      style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.bold
      ),
    );
  }
}
