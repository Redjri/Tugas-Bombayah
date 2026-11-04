import 'package:aplikasicrudapi/Controller/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateForm extends StatelessWidget {
  const CreateForm({super.key});

  @override
  Widget build(BuildContext context) {
    final uc = Get.put(UserController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Input"),
      ),
      body: Padding(
          padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: uc.teNama,
              decoration: InputDecoration(
                labelText: "Input nama",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: uc.teAlamat,
              decoration: InputDecoration(
                  labelText: "Input alamat",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  )
              ),
            ),
            SizedBox(height: 10),
            Obx(() => DropdownButtonFormField<String>(
              value: uc.GenderSelected.value,
              decoration: const InputDecoration(
                labelText: "Gender",
                border: OutlineInputBorder(),
              ),
              items: uc.GenderList.map((String val) {
                return DropdownMenuItem<String>(
                  value: val,
                  child: Text(val),
                );
              }).toList(),
              onChanged: (newValue) {
                if (newValue != null) {
                  uc.GenderSelected.value = newValue;
                }
              },
            )),
            SizedBox(height: 10),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red
                ),
                onPressed: () {
                  uc.TambahUser();
                },
                child: Text("Submit",
                  style: TextStyle(
                    color: Colors.white
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
