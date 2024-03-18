import 'package:whatsapp/data/repositories/post_repository.dart';
import 'package:whatsapp/domain/entities/post_entity.dart';

class FetchPosts {
  final repo = PostRepositoryImpl();

  Future<List<PostEntity>> execute() async {
    return repo.fetchPosts();
  }
}
