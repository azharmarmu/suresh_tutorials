import 'package:flutter_bloc/flutter_bloc.dart';

class XOXCubit extends Cubit<String> {
  XOXCubit() : super('Hello');

  void input(String i) {
    emit(i);
  }
  
}
