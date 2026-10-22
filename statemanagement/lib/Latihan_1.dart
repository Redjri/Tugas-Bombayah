import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement/counterControler.dart';

class Latihan_1 extends StatelessWidget {
  const Latihan_1({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body: Column(
        children: [
          Center(
            child: Obx(()=> Text("${controller.count}")),
          ),

          FloatingActionButton(onPressed: (){
            controller.increments();
          }, child: Icon(Icons.add),)
        ],
      ),
    );
  }
}
