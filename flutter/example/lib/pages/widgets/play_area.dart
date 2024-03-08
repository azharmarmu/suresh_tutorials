import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp/bloc/xox_cubit.dart';

import '../../utils/app_strings.dart';
import 'play_box.dart';

class PlayArea extends StatefulWidget {
  const PlayArea({super.key});

  @override
  State<PlayArea> createState() => _PlayAreaState();
}

class _PlayAreaState extends State<PlayArea> {
  List<String> values = List.generate(9, (index) => '');
  List<XOXCubit> cubits = List.generate(9, (index) => XOXCubit());
  bool isOddClick = true;
  int coverage = 0;
  bool win = false;

  void reset() {
    values = List.generate(9, (index) => '');
    isOddClick = true;
    coverage = 0;
    win = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () => reset(),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.clear),
              SizedBox(width: 2),
              Text(AppStrings.clear)
            ],
          ),
        ),
        const SizedBox(height: 32),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                BlocConsumer<XOXCubit, String>(
                  bloc: cubits[0],
                  listener: (context, state) {
                    //state -x , x will listen
                    print('BlocListener: $state');
                  },
                  builder: (context, state) {
                    // state -> x , x wil not rebuild
                    print('BlocBuilder: $state');
                    return PlayBox(
                      value: state,
                      onTap: () {
                        if (win == false) {
                          values[0] = logic();
                          coverage = values.where((e) => e.isNotEmpty).length;
                          winningCombinationCheck();
                          cubits[0].input('x');
                        }
                      },
                    );
                  },
                ),
                const SizedBox(width: 24),
                PlayBox(
                  value: values[1],
                  onTap: () {
                    if (win == false && values[1].isEmpty) {
                      values[1] = logic();
                      coverage = values.where((e) => e.isNotEmpty).length;
                      winningCombinationCheck();
                      setState(() {});
                    }
                  },
                ),
                const SizedBox(width: 24),
                PlayBox(
                  value: values[2],
                  onTap: () {
                    if (win == false && values[2].isEmpty) {
                      values[2] = logic();
                      coverage = values.where((e) => e.isNotEmpty).length;
                      winningCombinationCheck();
                      setState(() {});
                    }
                  },
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                PlayBox(
                  onTap: () {
                    if (win == false && values[3].isEmpty) {
                      values[3] = logic();
                      coverage = values.where((e) => e.isNotEmpty).length;
                      winningCombinationCheck();
                      setState(() {});
                    }
                  },
                  value: values[3],
                ),
                const SizedBox(width: 24),
                PlayBox(
                  value: values[4],
                  onTap: () {
                    if (win == false && values[4].isEmpty) {
                      values[4] = logic();
                      coverage = values.where((e) => e.isNotEmpty).length;
                      winningCombinationCheck();
                      setState(() {});
                    }
                  },
                ),
                const SizedBox(width: 24),
                PlayBox(
                  value: values[5],
                  onTap: () {
                    if (win == false && values[5].isEmpty) {
                      values[5] = logic();
                      coverage = values.where((e) => e.isNotEmpty).length;
                      winningCombinationCheck();
                      setState(() {});
                    }
                  },
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                PlayBox(
                  value: values[6],
                  onTap: () {
                    if (win == false && values[6].isEmpty) {
                      values[6] = logic();
                      coverage = values.where((e) => e.isNotEmpty).length;
                      winningCombinationCheck();
                      setState(() {});
                    }
                  },
                ),
                const SizedBox(width: 24),
                PlayBox(
                  value: values[7],
                  onTap: () {
                    if (win == false && values[7].isEmpty) {
                      values[7] = logic();
                      coverage = values.where((e) => e.isNotEmpty).length;
                      winningCombinationCheck();
                      setState(() {});
                    }
                  },
                ),
                const SizedBox(width: 24),
                PlayBox(
                  value: values[8],
                  onTap: () {
                    if (win == false && values[8].isEmpty) {
                      values[8] = logic();
                      coverage = values.where((e) => e.isNotEmpty).length;
                      winningCombinationCheck();
                      setState(() {});
                    }
                  },
                ),
              ],
            )
          ],
        ),
        const SizedBox(height: 32),
        if (win == true)
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Win By ${isOddClick ? 'O' : 'X'}'),
            ],
          )
      ],
    );
  }

  String logic() {
    if (isOddClick) {
      isOddClick = false;
      return 'X';
    } else {
      isOddClick = true;
      return 'O';
    }
  }

  void winningCombinationCheck() {
    if (coverage <= 4) {
      win = false;
      return;
    }
    //  * 0,1,2
    var x = values[0];
    var y = values[1];
    var z = values[2];
    if (x == y && y == z) {
      win = checkValueIsXorO(x);
      return;
    }
    //  * 3,4,5
    x = values[3];
    y = values[4];
    z = values[5];
    if (x == y && y == z) {
      win = checkValueIsXorO(x);
      return;
    }

    //  * 6,7,8
    x = values[6];
    y = values[7];
    z = values[8];
    if (x == y && y == z) {
      win = checkValueIsXorO(x);
      return;
    }

    //  * 0,3,6
    x = values[0];
    y = values[3];
    z = values[6];
    if (x == y && y == z) {
      win = checkValueIsXorO(x);
      return;
    }
    //  * 1,4,7
    x = values[1];
    y = values[4];
    z = values[7];
    if (x == y && y == z) {
      win = checkValueIsXorO(x);
      return;
    }
    //  * 2,5,8
    x = values[2];
    y = values[5];
    z = values[8];
    if (x == y && y == z) {
      win = checkValueIsXorO(x);
      return;
    }
    //  *
    //  * 0,4,8
    x = values[0];
    y = values[4];
    z = values[8];
    if (x == y && y == z) {
      win = checkValueIsXorO(x);
      return;
    }
    //  * 2,4,6
    x = values[2];
    y = values[4];
    z = values[6];
    if (x == y && y == z) {
      win = checkValueIsXorO(x);
      return;
    }
    win = false;
  }

  bool checkValueIsXorO(var x) =>
      x.toLowerCase() == 'x' || x.toLowerCase() == 'o';
}
