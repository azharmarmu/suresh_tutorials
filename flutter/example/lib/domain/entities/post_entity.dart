class PostEntity {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostEntity({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['userId'] = userId.toString();
    _data['id'] = id.toString();
    _data['title'] = title;
    _data['body'] = body;
    return _data;
  }
}
