import 'package:whatsapp/domain/entities/post_entity.dart';

abstract class PostRepository {
  Future<List<PostEntity>> fetchPosts();

  Future<PostEntity> fetchAPost(int id);
}
