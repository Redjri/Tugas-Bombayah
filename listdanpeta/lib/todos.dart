import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:listdanpeta/Controller.dart';

class todo extends StatelessWidget {
  const todo({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(Controller());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(() => ListView.builder(
              shrinkWrap: true,
              itemCount: c.todos.length,
              itemBuilder: (_, i) => ListTile(
                title: Text(c.todos[i]),
                onTap: () => c.remove(i),
              ),
            )),
          ],
        ),
      )
    );

  }
}
