import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modellatandlkpd/Controller/ControllerSoal.dart';
import 'package:modellatandlkpd/Model/ModelSoal.dart';

class fetchData extends StatelessWidget {
  const fetchData({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(soalController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Soal 10"),
      ),
      body: Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Obx(
                  () => ListView.builder(
                      shrinkWrap: true,
                      itemCount: c.newsList.length,
                      itemBuilder: (context, i) {
                        final p = c.newsList[i];
                        return ListTile(
                          title: Text('${p.title}'),
                        );
                      }
                  )
              ),
              ElevatedButton(
                  onPressed: () =>c.loadMoreViews([
                    NewsModel(title: "Berita 2"),
                    NewsModel(title: "Berita 3"),
                  ]),
                  child: Text("Muat Lebih Banyak")
              )
            ],
          ),
        ),
      ),
    );
  }
}
