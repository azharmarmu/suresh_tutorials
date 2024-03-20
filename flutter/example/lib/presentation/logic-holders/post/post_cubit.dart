import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp/domain/usecases/fetch_a_post_uc.dart';
import 'package:whatsapp/domain/usecases/fetch_posts_uc.dart';

import '../../../domain/entities/post_entity.dart';

part 'post_state.dart';

class PostCubit extends Cubit<PostState> {
  PostCubit() : super(PostInitial());

  final _fetchAPostUC = FetchAPostUC();
  final _fetchAllPostsUC = FetchPostsUC();

  Future<void> fetchAPost(int id) async {
    emit(PostLoading());
    final res = await _fetchAPostUC.execute(id);

    emit(SinglePostSuccess(res));
  }

  Future<void> fetchAllPosts() async {
    emit(PostLoading());
    final res = await _fetchAllPostsUC.execute();

    emit(AllPostSuccess(res));
  }
}
