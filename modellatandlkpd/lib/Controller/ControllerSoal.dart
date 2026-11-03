import 'dart:math';

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

  // soal 5
  var students = <StudentModel> [
    StudentModel(name: "Siti", isPassed: true),
    StudentModel(name: "Andi", isPassed: false),
    StudentModel(name: "Dewi", isPassed: true)
  ].obs;

  int get totalPassed => students.where((s) => s.isPassed).length;

  // soal 6
  var orderList = <OrderItemModel> [
    OrderItemModel(
        title: "Ayam Bakar",
        price: 20000,
        qty: 2),
    OrderItemModel(
        title: "Es Jeruk",
        price: 5000,
        qty: 3),
  ].obs;

  int get grandTotal => orderList.fold(0, (sum, item) => sum + (item.price));

  // soal 7
  var medicines = <MedicineModel> [
    MedicineModel(name: "M01", id: "Paracetamol", isTaken: false)
  ].obs;

  void ToggleTaken(int index) {
    medicines[index].isTaken = !medicines[index].isTaken;
    medicines.refresh();
  }

  // soal 8
  var searchHistory = <HistoryModel> [
    HistoryModel(location: "Bandung"),
    HistoryModel(location: "Jakarta"),
  ].obs;

  void clearHistory() {
    searchHistory.clear();
  }

  // soal 9
  var feedbackList = <FeedbackModel> [
    FeedbackModel(rating: 5.0, comment: "Sangat Bagus"),
    FeedbackModel(rating: 4.0, comment: "Bagus"),
    FeedbackModel(rating: 3.0, comment: "Cukup"),
  ].obs;

  double get averageRating {
    if (feedbackList.isEmpty) return 0.0;
    double total = feedbackList.fold(0, (sum, item) => sum + item.rating);
    return total / feedbackList.length;
  }

  // soal 10
  var newsList = <NewsModel> [
    NewsModel(title: "Berita 1")
  ].obs;

  void loadMoreViews(List<NewsModel> newFetch) {
    newsList.addAll(newFetch);
  }
}