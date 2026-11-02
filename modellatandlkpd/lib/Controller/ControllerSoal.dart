import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:modellatandlkpd/Model/ModelSoal.dart';

class soalController extends GetxController {
  // soal 1
  var recipes = <recipeModel> [
    recipeModel(
        name: "Nasi Goreng",
        category: "Utama"
    ),
    recipeModel(
        name: "Es Teh",
        category: "Minuman  "
    ),
  ].obs;

  // soal 2
  var taskList = <TaskModel> [

  ].obs;

  final teTugasBaru = TextEditingController();

  void addTask () {
    var newTask = TaskModel(id: DateTime.now().toString(), title: teTugasBaru.text);
    taskList.add(newTask);
  }
}