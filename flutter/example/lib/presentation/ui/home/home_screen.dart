import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp/core/app_routes.dart';
import 'package:whatsapp/core/app_strings.dart';
import 'package:whatsapp/presentation/logic-holders/post/post_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final postCubit = PostCubit();
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.appName),
      ),
      body: BlocBuilder<PostCubit, PostState>(
        bloc: postCubit..fetchAllPosts(),
        builder: (_, state) {
          if (state is PostLoading) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else if (state is AllPostSuccess) {
            final posts = state.posts;
            return ListView.separated(
              shrinkWrap: true,
              itemBuilder: (_, index) => ListTile(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AppRouteConstants.postDetail,
                    arguments: posts[index].id,
                  );
                },
                leading: Text(posts[index].id.toString()),
                title: Text(posts[index].title),
                subtitle: Text(posts[index].body),
                trailing: Text(posts[index].userId.toString()),
              ),
              separatorBuilder: (_, index) => const Divider(),
              itemCount: posts.length,
            );
          }
          return const SizedBox.shrink();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
