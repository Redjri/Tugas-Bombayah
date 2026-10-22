import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LIST DAN MAP'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Get.toNamed('/lisview');
              },
              child: Text('List dan ListView')
          ),
          ElevatedButton(
              onPressed: () {
                Get.toNamed('/peta');
              },
              child: Text('Peta')
          ),
          ElevatedButton(
              onPressed: () {
                Get.toNamed('/rxmap');
              },
              child: Text('RXMAP')
          ),
          ElevatedButton(
              onPressed: () {
                Get.toNamed('/todos');
              },
              child: Text('Todos')
          ),
        ],
      ),
    );
  }
}
