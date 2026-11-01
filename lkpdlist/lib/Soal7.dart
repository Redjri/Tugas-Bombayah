import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:lkpdlist/ControllerMap.dart';

class upsert extends StatelessWidget {
  const upsert({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(controllermap());
    return Scaffold(
      appBar: AppBar(
        title: Text('Upsert'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(
                () => ListView.builder(
                    shrinkWrap: true,
                    itemCount: c.userRatings.length,
                    itemBuilder: (context, i) {
                      final e = c.userRatings.entries.elementAt(i);
                      return ListTile(
                        title: Text(e.key),
                        subtitle: Text('Rating: ${e.value.toString()}'),
                        leading: CircleAvatar(
                          child: Text('${i + 1}'),
                        ),
                        trailing: Icon(Icons.star),
                      );
                    }
                )
            ),
            TextField(
              controller: c.rateName,
            ),
            Obx(
                () => Slider(
                  value: c.rating.value,
                  min: 0.0,
                  max: 255.0,
                  divisions: 255,
                  label: c.rating.round().toString(),
                  onChanged: (double value) {
                    c.setRange(value);
                  },
                ),
            ),
            ElevatedButton(
                onPressed: () => c.submitRating(c.rateName.text),
                child: Text('Submit')
            )
          ],
        ),
      ),
    );
  }
}
