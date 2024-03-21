import 'package:whatsapp/data/models/post_model.dart';
import 'package:whatsapp/data/repositories/post_repository.dart';

class SaveAPostUC {
  final repo = PostRepositoryImpl();

  Future<bool> execute(PostModel params) async {
    return repo.saveAPost(params);
  }
}
