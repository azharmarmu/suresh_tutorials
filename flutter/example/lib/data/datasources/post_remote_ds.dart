import 'package:whatsapp/core/app_endpoints.dart';
import 'package:whatsapp/core/app_network.dart';
import 'package:whatsapp/data/models/post_model.dart';

abstract class PostRemoteDS {
  Future<List<PostModel>> fetchPosts();

  Future<PostModel> fetchAPost(int id);
}

class PostRemoteDSImpl extends PostRemoteDS {
  @override
  Future<List<PostModel>> fetchPosts() async {
    final List<dynamic> result =
        await getApi(AppEndpoints.posts); //list of raw data

    //convert list of raw data to list of model
    List<PostModel> posts = [];
    for (int i = 0; i < result.length; i++) {
      posts.add(PostModel.fromJson(result[i]));
    }
    return posts;
  }

  @override
  Future<PostModel> fetchAPost(int id) async {
    final Map<String, dynamic> result =
        await getApi('${AppEndpoints.posts}/$id');

    //convert raw data to model
    return PostModel.fromJson(result);
  }
}
