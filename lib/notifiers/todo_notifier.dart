
import 'package:flutter/material.dart';
import 'package:lesson45/controllers/todo_controller.dart';

class TodoInheritedWidget extends InheritedWidget {
  final TodoViewModel viewModel;

  const TodoInheritedWidget({
    required this.viewModel,
    required Widget child,
  }) : super(child: child);

  static TodoInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<TodoInheritedWidget>();
  }

  @override
  bool updateShouldNotify(covariant TodoInheritedWidget oldWidget) {
    return viewModel != oldWidget.viewModel;
  }
}
