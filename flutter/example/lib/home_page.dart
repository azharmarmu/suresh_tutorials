import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp/bloc/counter_cubit.dart';

import 'bloc/greet_cubit.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final cubit = GreetCubit('Hello');
  final counterCubit = CounterCubit();

  @override
  Widget build(BuildContext context) {
    print('Build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Concepts'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterCubit, int>(
              bloc: counterCubit,
              builder: (context, state) {
                print('BlocBuilder-CounterCubit');
                return Text('$state');
              },
            ),
            //widget2
            //widget3
            //widget4
            // BlocBuilder<CounterCubit, int>(
            //   bloc: counterCubit,
            //   builder: (context, state) {
            //     print('BlocBuilder-CounterCubit');
            //     return Icon();
            //   },
            // ),
            //widget6
            //widgetn
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              counterCubit.increment();
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 24),
          FloatingActionButton(
            onPressed: () {
              counterCubit.decrement();
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
