import 'package:aplikasicrudapi/Controller/user_controller.dart';
import 'package:aplikasicrudapi/Model/Data_User_Model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdateForm extends StatelessWidget {
  const UpdateForm({super.key});

  @override
  Widget build(BuildContext context) {
    final uc = Get.put(UserController());

    var DatasUser = Get.arguments;
    if (DatasUser[1]!=null) {
      uc.teNama.text = DatasUser[1];
    }
    if (DatasUser[2]!=null) {
      uc.teAlamat.text = DatasUser[2];
    }
    if (DatasUser[3]!=null) {
      uc.GenderSelected.value = DatasUser[3];
    }
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
                    uc.UbahDatauser(DatasUser[0]);
                  },
                  child: Text("Ubah",
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
