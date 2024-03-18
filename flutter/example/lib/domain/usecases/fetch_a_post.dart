import 'package:whatsapp/domain/entities/post_entity.dart';

import '../../data/repositories/post_repository.dart';

class FetchAPosts {
  final repo = PostRepositoryImpl();

  Future<PostEntity> execute(int id) async {
    return repo.fetchAPost(id);
  }
}
