import '../../models/todo_model.dart';

abstract class TodoLocalDS {
  Future<List<TodoModel>> fetchTodoList();
  createTodo();
  updateTodo();
  deleteTodo();
}

class TodoLocalDSImpl extends TodoLocalDS {
  @override
  Future<List<TodoModel>> fetchTodoList() async {
    //Todo Backend call
    await Future.delayed(const Duration(seconds: 2));

    return List.generate(
        2,
        (index) => TodoModel(
              id: index + 1,
              title: 'Title${index + 1}',
              description: 'Description${index + 1}',
              createdAt: '',
              updatedAt: '',
            ));
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
