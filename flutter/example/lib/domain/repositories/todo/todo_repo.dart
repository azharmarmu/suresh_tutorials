import 'package:whatsapp/domain/entities/todo_entity.dart';

abstract class TodoRepo {
  Future<List<TodoEntity>> fetchTodoList();
  createTodo();
  updateTodo();
  deleteTodo();
}
