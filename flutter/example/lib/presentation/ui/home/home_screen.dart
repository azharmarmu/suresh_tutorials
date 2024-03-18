import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp/core/app_strings.dart';
import 'package:whatsapp/presentation/logic-holders/todo/todo_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final todoCubit = TodoCubit();
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.appName),
      ),
      body: BlocBuilder<TodoCubit, TodoState>(
        bloc: todoCubit..fetchTodoList(),
        builder: (context, state) {
          if (state is TodoLoadingState) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else if (state is TodoErrorState) {
            return const Center(
              child: Text('Failed to load Items'),
            );
          } else if (state is TodoSuccessState) {
            final item = state.todoList;
            return ListView.separated(
              itemBuilder: (_, index) => ListTile(
                onTap: ()=> Navigator.pushNamed(context, routeName, arguments: item[index].id),
                leading: Text('${item[index].id}'),
                title: Text(item[index].title),
                subtitle: Text(item[index].description),
              
              ),
              separatorBuilder: (_, index) => const Divider(),
              itemCount: item.length,
            );
          }
          return const SizedBox.shrink();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Todo: Open new file fill todo items and save
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
