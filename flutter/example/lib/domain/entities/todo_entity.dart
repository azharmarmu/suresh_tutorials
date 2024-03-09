class TodoEntity {
  final int id;
  final String title;
  final String description;
  final String createdAt;
  final String updatedAt;

  TodoEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
  });
}
