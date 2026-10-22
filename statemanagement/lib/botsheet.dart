import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class botsheet extends GetxController {
  void bot() {
    Get.bottomSheet(
        Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(16)),
            ),
            child: Wrap(
                children: [
                  ListTile(title: Text('Bagikan')),
                  ListTile(title: Text('Edit')),
            ]),
        ),
    );
  }
}