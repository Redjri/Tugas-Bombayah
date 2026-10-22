import 'package:biodatanoai/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class login_page extends StatelessWidget {
  const login_page({super.key});

  @override
  Widget build(BuildContext context) {
    final noaicontroller c = Get.put(noaicontroller());

    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Column(
        children: [
          TextField(
            controller: c.usn,
            decoration: InputDecoration(labelText: 'Username'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Password'),
          ),
          ElevatedButton(
              onPressed: c.login,
              child: Text('Submit')
          )
        ],
      ),
    );
  }
}
