import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs.dart';

class CounterButtonsWidget extends StatelessWidget {
  const CounterButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final counterProvider = BlocProvider.of<CounterBloc>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () => counterProvider.add(IncrementEvent()),
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        FloatingActionButton(
          onPressed: () => counterProvider.add(ResetEvent()),
          tooltip: 'Reset',
          child: const Text('0'),
        ),
        FloatingActionButton(
          onPressed: () => counterProvider.add(DecrementEvent()),
          tooltip: 'Decrement',
          child: const Icon(Icons.remove),
        ),
      ],
    );
  }
}