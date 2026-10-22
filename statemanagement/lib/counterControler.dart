import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs;

  void increments(){
    count++;
    // count = count + 1;
  }
}