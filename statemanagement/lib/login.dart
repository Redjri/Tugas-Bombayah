import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement/controller.dart';

class login_page extends StatelessWidget {
  const login_page({super.key});

  @override
  Widget build(BuildContext context) {
    final Controllerlogin c = Get.put(Controllerlogin());

    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Login"), centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) => c.usn.value = value,
            decoration: InputDecoration(
                hint: Text(
                    'Username'
                )
            ),
          ),
          TextField(
            onChanged: (value) => c.pw.value = value,
            decoration: InputDecoration(
                hint: Text(
                    'Password'
                )
            ),
          ),
          ElevatedButton(
              onPressed: c.login,
              child: Text("Masuk")
          )
        ],
      ),
    );
  }
}
