import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp/presentation/logic-holders/post/post_cubit.dart';

class PostDetailScreen extends StatelessWidget {
  final int id;
  const PostDetailScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    final postCubit = PostCubit();
    return Scaffold(
      appBar: AppBar(),
      body: AnimatedPadding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        duration: const Duration(seconds: 2),
        child: BlocBuilder<PostCubit, PostState>(
          bloc: postCubit..fetchAPost(id),
          builder: (_, state) {
            if (state is PostLoading) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            } else if (state is SinglePostSuccess) {
              final post = state.post;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('UserID: ${post.userId}'),
                  const SizedBox(height: 16),
                  Text('ID: ${post.id}'),
                  const SizedBox(height: 16),
                  Text('Title: ${post.title}'),
                  const SizedBox(height: 8),
                  Text('Description: ${post.body}'),
                ],
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
