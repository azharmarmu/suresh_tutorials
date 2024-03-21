import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp/presentation/logic-holders/save_post/save_post_cubit.dart';

class AddPostScreen extends StatelessWidget {
  const AddPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final savePostCubit = SavePostCubit();
    final userIdCtrl = TextEditingController();
    final idCtrl = TextEditingController();
    final titleCtrl = TextEditingController();
    final bodyCtrl = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: AnimatedPadding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        duration: const Duration(seconds: 5),
        child: BlocListener<SavePostCubit, SavePostState>(
          bloc: savePostCubit,
          listener: (_, state) {
            if (state == SavePostState.error) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('${savePostCubit.error}'),
                ),
              );
            } else if (state == SavePostState.success) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Post Saved Successfully'),
                ),
              );
              Navigator.pop(context);
            }
          },
          child: Column(
            children: [
              TextField(
                controller: userIdCtrl,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Enter UserID',
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: idCtrl,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Enter Id',
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: titleCtrl,
                decoration: const InputDecoration(
                  hintText: 'Enter Title',
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: bodyCtrl,
                decoration: const InputDecoration(
                  hintText: 'Enter Description',
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  savePostCubit.savePost(
                    userId: userIdCtrl.text,
                    id: idCtrl.text,
                    title: titleCtrl.text,
                    body: bodyCtrl.text,
                  );
                },
                child: const Text('Save Post'),
              ),
              ElevatedButton(
                onPressed: () {
                  
                },
                child: const Text('Animate'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
