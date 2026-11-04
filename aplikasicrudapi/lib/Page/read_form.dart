import 'package:aplikasicrudapi/Controller/user_controller.dart';
import 'package:aplikasicrudapi/Page/create_form.dart';
import 'package:aplikasicrudapi/Page/update_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReadForm extends StatelessWidget {
  const ReadForm({super.key});

  @override
  Widget build(BuildContext context) {
    final ucr = Get.put(UserController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Data User"),
        actions: [
          IconButton(
              onPressed: () {
                ucr.Kosongkan();
                Get.to(CreateForm());
              },
              icon: Icon(Icons.person_add_alt_rounded)
          )
        ],
      ),
      body: Container(
        child: Obx(
            () => ucr.Loading.value ? CircularProgressIndicator() : ListView.builder(
                shrinkWrap: true,
                itemCount: ucr.ListDataUser.length,
                itemBuilder: (context, i) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Text(ucr.ListDataUser.value[i].nama!.toString()),
                    ),
                    title: Text(ucr.ListDataUser.value[i].alamat!.toString()),
                    subtitle: Text(ucr.ListDataUser.value[i].gender!.toString()),
                    trailing: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {
                            Get.to(UpdateForm(), arguments: [
                              ucr.ListDataUser.value[i].id!,
                              ucr.ListDataUser.value[i].nama!,
                              ucr.ListDataUser.value[i].alamat!,
                              ucr.ListDataUser.value[i].gender!,
                            ]);
                          },
                          icon: Icon(Icons.edit),
                        ),
                        IconButton(
                            onPressed: () {
                              ucr.HapusDataUser(ucr.ListDataUser.value[i].id!);
                              Get.back();
                            },
                            icon: Icon(Icons.delete)
                        )
                      ],
                    ),
                  );
                }
            )
        ),
      ),
    );
  }
}
