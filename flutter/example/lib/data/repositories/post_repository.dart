import 'package:whatsapp/data/datasources/post_remote_ds.dart';
import 'package:whatsapp/domain/repositories/post_repository.dart';

import '../models/post_model.dart';

class PostRepositoryImpl extends PostRepository {
  final ds = PostRemoteDSImpl();
  @override
  Future<List<PostModel>> fetchPosts() {
    return ds.fetchPosts();
  }

  @override
  Future<PostModel> fetchAPost(int id) {
    return ds.fetchAPost(id);
  }
  
  @override
  Future<bool> saveAPost(PostModel params){
    return ds.saveAPost(params);
  }
}
