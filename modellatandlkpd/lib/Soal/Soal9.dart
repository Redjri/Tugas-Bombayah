import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modellatandlkpd/Controller/ControllerSoal.dart';

class RatingPengguna extends StatelessWidget {
  const RatingPengguna({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(soalController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Soal 9'),
      ),
      body: Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Ulasan"),
              Obx(
                  () => ListView.builder(
                      shrinkWrap: true,
                      itemCount: c.feedbackList.length,
                      itemBuilder: (context, i) {
                        final p = c.feedbackList[i];
                        return ListTile(
                          title: Text('${p.rating}'),
                          subtitle: Text('${p.comment}'),
                        );
                      }
                  )
              ),
              Obx(
                  () => Text("rata-rata Rating ${c.averageRating}")
              )
            ],
          ),
        ),
      ),
    );
  }
}
