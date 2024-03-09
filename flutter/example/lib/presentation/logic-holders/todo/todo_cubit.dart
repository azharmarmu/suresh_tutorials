import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp/domain/entities/todo_entity.dart';
import 'package:whatsapp/domain/usecases/fetch_todo_list_uc.dart';

part 'todo_state.dart';

class TodoCubit extends Cubit<TodoState> {
  final fetchTodoListUC = FetchTodoListUC();
  TodoCubit() : super(TodoLoadingState());

  fetchTodoList() async {
    //fetch data from backend
    emit(TodoLoadingState());
    final todoList = await fetchTodoListUC.execute();

    emit(TodoSuccessState(todoList: todoList));
  }

  createTodo() {}

  updateTodo() {}

  deleteTodo() {}
}
