import 'package:whatsapp/data/repositories/todo/todo_repo_impl.dart';
import 'package:whatsapp/domain/entities/todo_entity.dart';

class FetchTodoListUC {
  final repo = TodoRepoImpl();

  Future<List<TodoEntity>> execute() {
    return repo.fetchTodoList();
  }
}
