import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp/data/models/post_model.dart';

import '../../../domain/usecases/save_a_post_uc.dart';

part 'save_post_state.dart';

class SavePostCubit extends Cubit<SavePostState> {
  SavePostCubit() : super(SavePostState.initial);

  String? error;
  final _saveAPostUC = SaveAPostUC();

  Future<void> savePost({
    required String userId,
    required String id,
    required String title,
    required String body,
  }) async {
    emit(SavePostState.loading);

    if (userId.trim().isEmpty) {
      error = 'UserId cannot be Empty';
      emit(SavePostState.error);
    } else if (id.trim().isEmpty) {
      error = 'ID cannot be Empty';
      emit(SavePostState.error);
    } else if (title.trim().isEmpty) {
      error = 'Title cannot be Empty';
      emit(SavePostState.error);
    } else if (body.trim().isEmpty) {
      error = 'Description cannot be Empty';
      emit(SavePostState.error);
    } else {
      //handle success case
      final res = await _saveAPostUC.execute(PostModel(
        userId: int.parse(userId),
        id: int.parse(id),
        title: title,
        body: body,
      ));
      if (res) {
        emit(SavePostState.success);
      } else {
        error = 'Not Saved';
        emit(SavePostState.error);
      }
    }
  }
}
