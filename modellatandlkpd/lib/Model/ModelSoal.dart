// soal 1
class recipeModel {
  String name;
  String category;
  recipeModel(
      {
        required this.name,
        required this.category
      }
      );
}

// soal 2
class TaskModel {
  String id;
  String title;
  bool isCompleted;
  TaskModel(
  {
    required this.id,
    required this.title,
    this.isCompleted = false
  }
  );
}

// soal 3
class UserModel {
  String name;
  String email;
  UserModel(
  {
    required this.name,
    required this.email
  }
  );
}

// soal 4
class CartModel {
  String id, name;
  CartModel(
  {
    required this.id,
    required this.name
  }
  );
}

// soal 5
class StudentModel {
  String name;
  bool isPassed;

  StudentModel(
  {
    required this.name,
    required this.isPassed
  }
  );
}

// soall 6
class OrderItemModel {
  String title;
  int price;
  int qty;

  OrderItemModel(
  {
    required this.title,
    required this.price,
    required this.qty
}
      );
}

// soal 7
class MedicineModel {
  String id, name;
  bool isTaken;

  MedicineModel(
  {
    required this.name,
    required this.id,
    this.isTaken = false
  }
  );
}

// soal 8
class HistoryModel {
  String location;

  HistoryModel({
    required this.location
  }
  );
}

// soal 9
class FeedbackModel {
  double rating;
  String comment;

  FeedbackModel(
  {
    required this.rating,
    required this.comment
}
      );
}

// saol 10
class NewsModel {
  String title;

  NewsModel(
  {
    required this.title
}
      );
}