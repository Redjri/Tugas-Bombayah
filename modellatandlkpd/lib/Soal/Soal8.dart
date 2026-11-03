import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:modellatandlkpd/Controller/ControllerSoal.dart';

class Pemberisahn extends StatelessWidget {
  const Pemberisahn({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(soalController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Soal 8'),
      ),
      body: Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextButton(
                  onPressed: () => c.clearHistory(),
                  child: Text('Bersihkan Riwayat')
              ),
              Obx(
                  () => ListView.builder(
                      shrinkWrap: true,
                      itemCount: c.searchHistory.length,
                      itemBuilder: (context, i) {
                        return ListTile(
                          title: Text('${c.searchHistory[i].location}'),
                          leading: CircleAvatar(
                            child: Text('${i+1}'),
                          ),
                        );
                      }
                  )
              )
            ],
          ),
        ),
      )
    );
  }
}
