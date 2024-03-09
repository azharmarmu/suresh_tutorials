import 'package:whatsapp/domain/entities/todo_entity.dart';

class TodoModel extends TodoEntity {
  TodoModel({
    required super.id,
    required super.title,
    required super.description,
    required super.createdAt,
    required super.updatedAt,
  });
}
