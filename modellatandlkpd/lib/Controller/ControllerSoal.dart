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

  // soal 3
  var user = UserModel(
      name: 'Budi',
      email: 'budi@gmail.com'
  ).obs;

  void UpdateProfil (String NewName, String NewEmail) {
    user.update((val) {
      val?.name = NewName;
      val?.email = NewEmail;
    });
  }

  // soal 4
  var cartItems = <CartModel> [
    CartModel(
        id: 'C01',
        name: 'Sepatu'
    ),
    CartModel(
        id: 'C02',
        name: 'Tas'
    ),
  ].obs;

  void removeItem(String id) {
    cartItems.removeWhere((item) => item.id == id);
  }
}