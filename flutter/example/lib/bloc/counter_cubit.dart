import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  int count = 0;
  CounterCubit() : super(0);

  void increment() => emit(count++);
  void decrement() => emit(count--);
}
