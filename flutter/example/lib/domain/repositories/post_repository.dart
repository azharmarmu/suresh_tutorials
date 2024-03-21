import 'package:whatsapp/data/models/post_model.dart';
import 'package:whatsapp/domain/entities/post_entity.dart';

abstract class PostRepository {
  Future<List<PostEntity>> fetchPosts();

  Future<PostEntity> fetchAPost(int id);

  Future<bool> saveAPost(PostModel params);
}
