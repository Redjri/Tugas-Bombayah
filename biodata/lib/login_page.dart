import 'package:biodata/Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final tokoController control = Get.put(tokoController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text('Masuk'), centerTitle: true),
      body: Padding(
        padding:  EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) => control.username.value = value,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            SizedBox(height: 10),
            TextField(
              onChanged: (value) => control.password.value = value,
              obscureText: true,
              decoration:  InputDecoration(labelText: 'Password'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: control.login,
              style: ElevatedButton.styleFrom(
                minimumSize:  Size.fromHeight(45),
              ),
              child:  Text('Masuk'),
            ),
            SizedBox(height: 10),
            Text('Contoh akun: admin / 1234'),
          ],
        ),
      ),
    );
  }
}