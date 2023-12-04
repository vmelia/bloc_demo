import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs.dart';

abstract class CounterEvent {}

class IncrementEvent extends CounterEvent {}

class DecrementEvent extends CounterEvent {}

class ResetEvent extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0)) {
    on<IncrementEvent>(
      (event, emit) => emit(CounterState(state.count + 1, direction: CounterDirection.increment)),
    );
    on<DecrementEvent>(
      (event, emit) => emit(CounterState(state.count - 1, direction: CounterDirection.decrement)),
    );
    on<ResetEvent>(
      (event, emit) => emit(CounterState(0)),
    );
  }
}
