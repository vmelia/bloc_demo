import 'package:flutter/material.dart';

import '../blocs.dart';

class SnackBarHelper {
  static void showSnackBar(BuildContext context, CounterDirection direction) {
    if (direction == CounterDirection.none) return;

    final text = switch (direction) {
      CounterDirection.increment => 'Increment',
      CounterDirection.decrement => 'Decrement',
      _ => '',
    };
    final colour = switch (direction) {
      CounterDirection.increment => Colors.green,
      CounterDirection.decrement => Colors.red,
      _ => Colors.transparent,
    };

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          text,
          textAlign: TextAlign.center,
        ),
        backgroundColor: colour,
      ),
    );
  }
}
