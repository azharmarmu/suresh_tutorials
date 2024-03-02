import 'package:flutter_bloc/flutter_bloc.dart';

class GreetCubit extends Cubit<String> {
  GreetCubit(super.initialState);

  void changeGreeting(String greet) => emit(greet);
}


