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