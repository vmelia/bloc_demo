import '../blocs.dart';

class CounterState {
  final int count;
  final CounterDirection direction;
  CounterState(this.count, {this.direction = CounterDirection.none});
}
