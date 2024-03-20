part of 'post_cubit.dart';

@immutable
sealed class PostState {}

final class PostInitial extends PostState {}

final class PostLoading extends PostState {}

final class AllPostSuccess extends PostState {
  final List<PostEntity> posts;

  AllPostSuccess(this.posts);
}

final class SinglePostSuccess extends PostState {
  final PostEntity post;

  SinglePostSuccess(this.post);
}

final class PostError extends PostState {}
