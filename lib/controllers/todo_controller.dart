
import 'package:flutter/material.dart';
import '../models/todo_model.dart';

class TodoViewModel extends ChangeNotifier {
  List<Todo> _todos = [];

  List<Todo> get todos => _todos;

  void addTodoItem(String title) {
    _todos.add(Todo(title: title));
    notifyListeners();
  }

  void toggleTodoStatus(int index) {
    _todos[index].isCompleted = !_todos[index].isCompleted;
    notifyListeners();
  }

  void removeTodoItem(int index) {
    _todos.removeAt(index);
    notifyListeners();
  }
}
