import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modellatandlkpd/Controller/ControllerSoal.dart';

class atdel extends StatelessWidget {
  const atdel({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(soalController());

    String inputName = '';
    String inputEmail = '';

    return Scaffold(
      appBar: AppBar(
        title: Text('Soal 3'),
      ),
      body: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Obx(
                    () => Center(
                      child: Column(
                        children: [
                          Text(c.user.value.name),
                          Text(c.user.value.email),
                        ],
                      ),
                    )
                ),
                TextField(
                  onChanged: (value) {
                    inputName = value;
                  },
                  decoration: InputDecoration(
                    labelText: "Nama"
                  ),
                ),
                TextField(
                  onChanged: (value) {
                    inputEmail = value;
                  },
                  decoration: InputDecoration(
                      labelText: "Email"
                  ),
                ),
                ElevatedButton(
                    onPressed: () => c.UpdateProfil(inputName, inputEmail),
                    child: Text('Submit')
                )
              ],
            ),
          )
      ),
    );
  }
}
