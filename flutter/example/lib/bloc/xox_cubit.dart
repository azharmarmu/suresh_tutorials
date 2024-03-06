import 'package:flutter_bloc/flutter_bloc.dart';

class XOXCubit extends Cubit<String> {
  XOXCubit() : super('');

  void input(String i) {
    emit(i);
  }
  
}
