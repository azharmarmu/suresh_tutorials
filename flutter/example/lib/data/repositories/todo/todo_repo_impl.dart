import 'package:whatsapp/data/datasources/todo/todo_local_ds.dart';
import 'package:whatsapp/domain/repositories/todo/todo_repo.dart';

import '../../models/todo_model.dart';

class TodoRepoImpl extends TodoRepo {
  final ds = TodoLocalDSImpl();
  @override
  Future<List<TodoModel>> fetchTodoList() {
    return ds.fetchTodoList();
  }

  @override
  createTodo() {
    // TODO: implement createTodo
    throw UnimplementedError();
  }

  @override
  deleteTodo() {
    // TODO: implement deleteTodo
    throw UnimplementedError();
  }

  @override
  updateTodo() {
    // TODO: implement updateTodo
    throw UnimplementedError();
  }
}
