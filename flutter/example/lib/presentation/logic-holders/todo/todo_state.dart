part of 'todo_cubit.dart';

abstract class TodoState {}

class TodoLoadingState extends TodoState {}

class TodoSuccessState extends TodoState {
  final List<TodoEntity> todoList;

  TodoSuccessState({required this.todoList});
}

class TodoErrorState extends TodoState {}
